#!/bin/bash
host=""


adicionar() {
	 echo $1 $2 >> hosts.db
	}

remover() {
	if ls hosts.db &> /dev/null
	then
		if grep $1 hosts.db &> /dev/null
		then
			 sed -i "/$1/d" hosts.db &> /dev/null
		fi
	fi
	}

listar() {
	if ls hosts.db &> /dev/null
	then
  		cat  hosts.db
	fi
	}

procurar() {
	grep "$1" hosts.db | cut -f2 -d ' '
	}

buscareversa() {
	grep "$1" hosts.db | cut -f1 -d' '
	}

while getopts "a:i:d:lr:" OPTVAR
do
	host="true"
	case $OPTVAR in
		a)
		hostname=$OPTARG
		;;
		i)
		ips=$OPTARG
		adicionar $hostname $ips
		;;
		d)
		hostname=$OPTARG
		remover $hostname
		;;
		l)
		listar
		;;
		r)
		ips=$OPTARG
		buscareversa $ips
		;;
	esac
done

if [ "$host" == "" ]
then
	procurar $1
fi
