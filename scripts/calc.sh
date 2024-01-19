#!/bin/bash

OP=
a=
b=
start="true"

menu ()
{
	clear;
	tput bold
	tput setaf 2
	echo "----------Menu----------"
	echo "1 - Soma"
	echo "2 - Subtração"
	echo "3 - Multiplicação"
	echo "4 - Divisão"
	echo "5 - Sair"
	echo "------------------------"
	tput setaf 1
	read -p "Digite a Opção:" OP
}

sair ()
{
	start="false"
}

soma ()
{
	clear;
	read -p "Digite o valor de A:" a
	read -p "Digite o valor de B:" b
	res=$(echo ($a+$b) | bc)
	#echo "O resultado é ${res}"
	printf 'O resultado é %.1f' $res
	read -p "Pressione Enter..."
}

subtr ()
{
	clear;
	read -p "Digite o valor de A:" a
        read -p "Digite o valor de B:" b
	res=$(expr $a - $b)
	echo "O resultado é ${res}"
        read -p "Pressione Enter..."
}

multiplica ()
{
	clear;
	read -p "Digite o valor de A:" a
        read -p "Digite o valor de B:" b
	res=$((a*b))
        echo "O resultado é ${res}"
        read -p "Pressione Enter..."
}

div ()
{
        clear;
	read -p "Digite o valor de A:" a
        read -p "Digite o valor de B:" b
        res=$(expr $a / $b)
        echo "O resultado é ${res}"
        read -p "Pressione Enter..."

}


while $start -eq "true"
do
	menu;
	case $OP in
	1)
        	soma;
		;;
	2)
		subtr;
		;;
	3)
		multiplica;
		;;
	4)
		div
		;;

	5)
		#exit 0;
		sair;
		;;
	*)
		clear;
		read -p "Opção Invalida..."
	esac
done
