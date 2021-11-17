#!/usr/bin/env bash
echo "=== For 1"
for (( i = 0; i < 10; i++ )); do
  #statements
  echo $i
done

echo "-----------------------------"
echo "=== For 2"
for i in $(seq 10); do
  echo $i
done

echo "-----------------------------"
echo "=== For 3 (array)"

Frutas=("Laranja", "Ameixa", "Pessego", "Manga", "Jabuticaba")

for i in ${Frutas[@]}; do
  echo $i
done

echo "-----------------------------"
echo "=== While"
contador=0
while [[ $contador -lt ${#Frutas[@]} ]]; do
  #statements
  echo $contador
  contador=$((contador+1))
done
