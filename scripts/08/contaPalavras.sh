#!/bin/bash

declare -A Texto

read -p "Informe o arquivo: " arquivo
sed 's/[^A-Za-z0-9ÀàÁáÂâÃãÉéÊêÍíÓóÔôÕõÚúÇç_-]/ /g' $arquivo >> textoLimpo.txt

while read linha
do
	for palavra in $linha
	do
		let Texto[$palavra]++
	done
done < textoLimpo.txt

for repeticao in ${!Texto[@]}
do
	echo "$repeticao apareceu: ${Texto[$repeticao]}"
done
rm textoLimpo.txt
