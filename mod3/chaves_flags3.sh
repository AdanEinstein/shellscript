#!/usr/bin/env bash

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

    -h - Menu de Ajuda
    -v - Versão
    -s - Ordenar a Saída
    -m - Coloca em maiúsculo
"

VERSAO="v1.2"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0


case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0    ;;
  -v) echo "$VERSAO" && exit 0          ;;
  -s) CHAVE_ORDENA=1                    ;;
  -m) CHAVE_MAIUSCULO=1                 ;;
  *) echo "$USUARIOS"                   ;;
esac

#FLAGS
[ $CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort && exit 0
[ $CHAVE_MAIUSCULO -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z] && exit 0
