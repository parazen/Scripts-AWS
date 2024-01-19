#!/bin/bash

PORT=$1

nc -l $PORT > arq.txt
nc -l $PORT > ip.
ip=$(cat ip.txt)
port=$(cat port.txt)
arq=$(cat arq.txt | ls)

nc $ip $port < $arq
