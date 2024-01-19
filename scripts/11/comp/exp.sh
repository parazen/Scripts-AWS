#!/bin/bash

OP=
Nomes=()

dadosPlayer ()
{
        clear;

}

cadastro ()
{
        clear;
	init="true"
	while $init -eq "true"
	do
		read -a "Digite um nome:" Nomes
		init="false"
	done

}

menu ()
{
        clear;
        echo "1 - Cadastrar"
        echo "2 - Remover"
        echo "3 - Sair"
        read -p "Digite a Opção desejada:" OP
}

while true
do
        menu;
        case $OP in
        1)
		cadastro;
		echo $Nomes
                ;;
        2)
                ;;
	3)
		exit 0;
		;;
        *)
                ;;
        esac
done 


