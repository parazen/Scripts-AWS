#!/bin/bash

IPS=$1		#Parametro que recebe o nome do arquivo

for ips in $(cat ${IPS})
do
	latencia="$(ping -c 10 $ips | grep "avg" | cut -f5 -d'/')"
 	echo "${ips} , ${latencia}ms" >> media.txt
done

sort  -n -k2  media.txt

# Ele vai entrar no laço fazer o ping pra cada ip que tiver dentro do arquivo, detalhe um ip por linha

#Executa o script normal e coloca o nome do arquivo
#Ex: Assumindo que o arquivo ta na mesma pasta do script e dentro tem o ip 8.8.8.8
#./latencia.sh ip.txt
