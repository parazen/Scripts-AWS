#!/bin/bash

n1=$1
n2=$2
n3=$3

if expr $n1 + 1 &> /dev/null 
then
    echo "${n1} é um número"

    if expr $n2 + 1  &> /dev/null
        then
                echo "${n2} é um número"

        if expr $n3 + 1  &> /dev/null
        then
                        echo "${n3} é um número."

            if test $n1 -gt $n2 -a $n1 -gt $n3 &> /dev/null
                then
                               echo "${n1} é o maior numero inserido"
                    fi

                        if test $n2 -gt $n1 -a $n2 -gt $n3 &> /dev/null
                          then
                             echo "${n2} é o maior numero inserido"
                    fi

                           if test $n3 -gt $n1 -a $n3 -gt $n2 &> /dev/null
                        then
                         echo "${n3} é o maior numero inserido"
                        fi

        else
             echo "Opa!!! ${n3} não é número."
               fi
    else
                echo "Opa!!! ${n2} não é número."

        fi
else
    echo "Opa!!! ${n1} não é número."
fi
