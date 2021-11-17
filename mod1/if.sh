echo "UTILIZANDO IF"

# VAR1=$1
# VAR2=$2
#
# if [[ "$VAR1" = "$VAR2" ]]; then
#   #statements
#   echo "São IGUAIS"
# fi
echo "-------------------------"

VAR1=$1
VAR2=$2

TOTAL=$(($VAR1+$VAR2))
if [[ "$TOTAL" -gt 0 ]]; then
  echo "$TOTAL"
  echo "SOMA MAIOR QUE ZERO"
fi

echo "-------------------------"

read -p "Digite um numero: " N1
read -p "Digite outro numero: " N2
SOMA=$(($N1+$N2))
echo "A Soma é $SOMA"
