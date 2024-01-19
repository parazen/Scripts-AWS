#!/bin/bash

acao=$1
nome=$2
email=$3

case "$acao" in
	"adicionar")
		if ls agenda.db &> /dev/null
		then
			echo "${nome}:${email}" >> agenda.db
			echo "Usuario ${nome} adicionado."
		else
			echo "Arquivo criado!!!"
			echo "${nome}:${email}" >> agenda.db
			echo "Usuario ${nome} adicionado."
		fi
		;;

	"listar")
		if ls agenda.db &> /dev/null
		then
			cat agenda.db
		else
			echo "Arquivo vazio."
		fi
		;;

	"remover")
		if grep "${nome}" agenda.db &> /dev/null
		then
			sed -i "/${nome}/d" agenda.db &> /dev/null
			echo "${nome} foi removido"
		else
			echo "${nome} não está na agenda."
		fi
		;;
esac
