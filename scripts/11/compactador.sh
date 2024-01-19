#!/bin/bash

TMP='/tmp'

dir=$(dialog --title "Insira o Caminho do Diretorio" --stdout --inputbox "" 0 0)
if [ "$dir" == "" ] ; then
      exit 0;
fi

echo 'dialog --stdout --checklist "Selecione o arquivo." 17 50 10 \' > $TMP/viewscr

for name in $(ls $dir/*.*)
do
	echo "$name ' ' OFF \\" >> $TMP/viewscr
done
echo "2> $TMP/return" >> $TMP/viewscr

filename=$(. $TMP/viewscr)
if [ "$filename" == "" ] ; then
      exit 0;
fi

echo "$filename" > tmp

cat tmp | tr ' ' '\n' | tee tmp

mkdir comp
for item in $(cat tmp)
do
	cp -r $dir/$item ~/scripts/11/comp
done

compactacao=$(dialog --stdout --radiolist "Escolha a forma de compactação:" 0 0 0 \
"gzip" ' ' OFF \
"b2zip" ' ' OFF \
)
if [ "$compactacao" == "" ] ; then
      exit 0;
fi

nomearq=$(dialog --title "Nome do arquivo" --stdout --inputbox "Digite o nome do arquivo:" 0 0)
if [ "$nomearq" == "" ] ; then
      exit 0;
fi

if [ "$compactacao" == "gzip" ]
then
	tar -czf $nomearq.tar.gz comp/
	dialog --title "Sucesso" --msgbox "$nomearq criado com sucesso" 0 0
else
	tar -cvjf $nomearq.tar.bz2 comp/
	dialog --title "Sucesso" --msgbox "$nomearq criado com sucesso" 0 0
fi

rm -f $TMP/return $TMP/viewscr $TMP/tmpmsg

