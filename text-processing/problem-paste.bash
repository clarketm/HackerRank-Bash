#!/usr/bin/env bash


declare -a array

while read -r line; do
    array+=($line)
done

echo "${array[@]}"

# OR

readarray -t array

echo "${array[@]}"

# OR

paste -sd '\t'

###################################################

paste -sd '\t\t\n'

###################################################

paste -sd ';'

###################################################

paste -sd ';;\n'
