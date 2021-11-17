#!/usr/bin/env bash
echo "Adan Einstein"

# echo $0

NUMERO_1=15
NUMERO_2=220

TOTAL=$(($NUMERO_1+$NUMERO_2))

echo "$TOTAL"
echo "--------------------------------------"

echo "Parametro 1: $1"
echo "Parametro 2: $2"

echo "Todos os parametros: $*"
echo "Quantos parametros? $#"
echo "Ultimo comando executado? $?"
echo "PID: $$"
echo "Shell executado: $0"
