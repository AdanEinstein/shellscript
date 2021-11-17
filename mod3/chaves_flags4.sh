#!/usr/bin/env bash

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

    -h - Menu de Ajuda
    -v - Versão
    -s - Ordenar a Saída
    -m - Coloca em maiúsculo
"

VERSAO="v1.3"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0

#test -n - Verifica se a variavel $1 esta nula
while test -n "$1"
do
  case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0               ;;
    -v) echo "$VERSAO" && exit 0                     ;;
    -s) CHAVE_ORDENA=1                               ;;
    -m) CHAVE_MAIUSCULO=1                            ;;
    *) echo "Opção inválida, valide o -h." && exit 1 ;;
  esac
  shift #Pula de parametro tornando-o o novo $1
done

#FLAGS
[ $CHAVE_ORDENA -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"
