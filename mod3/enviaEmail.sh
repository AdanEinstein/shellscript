#!/usr/bin/env bash
#
# enviaEmail.sh - Envia um email via terminal
#
# Autor:      Adan Einstein
# Manutenção: Adan Einstein
#
# ------------------------------------------------------------------------ #
#  Este programa auxiliar um envio de um email para quem desejar
#
#  Exemplos:
#      $ ./enviaEmail.sh
#      Começa a execução do programa pedindo algumas informações como:
#           - Endereço do servidor SMTP
#           - Usuário e Senha
#           - Remetente
#           - Titulo
#           - Mensagem
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 17/11/2021, Adan:
#         - Inicio do programa
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.8
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
ENDERECO_SERVIDOR=""
PORTA=""
ENDERECO_COMPLETO=""
CHAVE_CONEXAO=0
USUARIO=""
SENHA=""
REMETENTE=""
TITULO=""
MENSAGEM=""
MENSAGEM_AJUDA="
      $(basename $0) - [OPÇÕES]
            -h - Mensagem de mensagem de ajuda
            -v - Versão
"
VERSAO="v1.0"


# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

case "$1" in
  -h) echo "$MENSAGEM_AJUDA" && exit 0             ;;
  -v) echo "$VERSAO" && exit 0                     ;;
esac


# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

echo $(clear)
read -p "Digite o servidor SMTP: " ENDERECO_SERVIDOR
read -p "Digite a porta: " PORTA
ping -c1 "$ENDERECO_SERVIDOR"
[ $? -ne 0 ] && echo "O endereco do servidor está fora de acesso!!" && exit 1
ENDERECO_COMPLETO="$ENDERECO_SERVIDOR"":$PORTA"
echo $(clear)
echo "Endereço: $ENDERECO_COMPLETO - OK"
read -p "Digite o email: " USUARIO
read -p "Digite a senha: " -s SENHA
echo
read -p "Digite o remetente: " REMETENTE
read -p "Digite o título: " TITULO
read -p "Digite a mensagem: " MENSAGEM
echo $(sendEmail -f "$USUARIO"\
                 -t "$REMETENTE"\
                 -u "$TITULO"\
                 -m "$MENSAGEM"\
                 -s "$ENDERECO_COMPLETO"\
                 -xu "$USUARIO"\
                 -xp "$SENHA")
[ $? -ne 0 ] && echo "Ocorreu alguma falha!!" && exit 1

# ------------------------------------------------------------------------ #
