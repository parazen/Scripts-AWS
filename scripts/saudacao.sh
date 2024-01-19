#!/bin/bash

echo "Olá $(whoami)," | tee -a saudacao.log
echo "hoje é dia $(date +%d), do mes $(date +%m) do ano $(date +%Y)." | tee -a saudacao.log

