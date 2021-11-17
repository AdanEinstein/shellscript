#!/usr/bin/env bash
echo "Laço de 0 a 10"
for (( i = 0; i < 10; i++ )); do
  echo $i
  if [[ $i%2 -eq 0 ]]; then
    echo "$i é divisivel por ZERO"
  else
    echo "$i não é divisivel por ZERO"
  fi
done
