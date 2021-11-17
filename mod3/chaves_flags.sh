#!/usr/bin/env bash

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $0 - [OPÇÕES]

  -h - Menu de Ajuda
  -v - Versão
  -s - Ordenar a Saída
"

VERSAO="v1.0"

if [[ "$1" = "-h" ]]; then
  echo "$MENSAGEM_USO" && exit 0
fi
if [[ "$1" = "-v" ]]; then
  echo "$VERSAO" && exit 0
fi
if [[ "$1" = "-s" ]]; then
  echo "$USUARIOS" | sort && exit 0
fi
echo "$USUARIOS"
