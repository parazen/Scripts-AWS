#!/bin/bash

IPSERVER=$1
PORT=$2
ARQ=$3

ipc=$(hostname -I | cut -d ' ' -f1)

echo "$ARQ $ipc $PORT  " > info.txt

#nc $IPSERVER $PORT < info.txt

#nc -l -p $PORT > arquivo.txt

hose $IPSERVER $PORT --out --in sh -c "cat info.txt & tee $ARQ"

