#!/usr/bin/env bash

#Variáveis
comeca=0
ate=100

#Teste
[ $comeca -ge $ate ] && exit 1

#Execução
for i in $(seq $comeca $ate)
  do
    for j in $(seq $i $ate)
    do
      printf "*"
    done
    printf "\n"
  done
