#!/bin/bash

touch teste2.html
ls | sed -e 's/^.*.html$/\U&/' -e '/HTML/s/HTML/HTM/'

sed -e 's/[[:blank:]]A/INF/' -e 's/[[:blank:]]B/LOG/' -e 's/[[:blank:]]C/RED/' turmas > tempFormat.txt

# Filtrando Turma A
sed -n '/INF/p' tempFormat.txt > turmaA.txt
# Filtrando Turma B
sed -n '/LOG/p' tempFormat.txt > turmaB.txt
# Filtrando Turma C
sed -n '/RED/p' tempFormat.txt > turmaC.txt


