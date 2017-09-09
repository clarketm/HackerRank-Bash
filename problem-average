#!/usr/bin/env bash

read -r n

nums=()

while [ $n -gt 0 ]; do
  read -r num
  nums+=($num)
  let "n--"
done

sum=0
count=${#nums[@]}

for op in "${nums[@]}"; do
  let "sum+=$op"
done

printf "%.3f" $(echo "scale=5; $sum/$count" | bc)
