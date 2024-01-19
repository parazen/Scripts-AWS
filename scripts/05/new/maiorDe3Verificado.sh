#!/bin/bash
n1=$1
n2=$2
n3=$3

if expr $n1 + 1 &> /dev/null 
then
	if expr $n2 + 1 &> /dev/null
        then
		if expr $n3 + 1 &> /dev/null
	        then
			if [ $n1 -gt $n2 -a $n1 -gt $n3 ]
			then
				echo "${n1}"
			fi

			if [ $n2 -gt $n1 -a $n2 -gt $n3 ]
			then
				echo "${n2}"
			else
				echo "${n3}"
			fi
       		else
                	echo "Opa!! ${n3} não é um numero";
       		fi

	else
		echo "Opa!! ${n2} não é um numero";
        fi
else
	echo "Opa!! ${n1} não é um numero";
fi
