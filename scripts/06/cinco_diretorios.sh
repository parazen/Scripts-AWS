#!/bin/bash

mkdir cinco

for ((dir=1;dir<=5;dir++));do
mkdir cinco/dir$dir
        for ((arq=1;arq<=4;arq++));do
		touch cinco/dir$dir/arq$arq.txt;

	 	for i in `seq $arq`
		do
			echo "$arq" >> cinco/dir$dir/arq$arq.txt
		done
        done
done

#find cinco/
