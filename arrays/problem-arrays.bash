#!/usr/bin/env bash


readarray array       # `mapfile` is equivalent

echo ${array[@]}

# OR

readarray -t array    # `mapfile` is equivalent

echo "${array[@]}"    # quotes are `optional` here
# echo ${array[@]}

# OR

declare -a array

while read -r line; do
  array+=($line)
done

echo "${array[@]}"    # quotes are `optional` here
# echo ${array[@]}

###################################################

# Slice array from position [3, 7] (inclusive)
# (index:0) === (position:1)
readarray -t array

echo "${array[@]:3:5}"

###################################################
