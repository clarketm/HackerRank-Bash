#!/usr/bin/env bash


file=$(mktemp)

while read -r line; do
  echo "$line" >> "$file"
done

head -n20 "$file"

# OR

declare -i count=0

while read -r line && [ $count -lt 20 ]; do
  echo "$line"
  let "count++"
done

# OR

cat - | head -n20

###################################################

cat - | head -c20

###################################################

cat - | head -n22 | tail -n11
# OR
cat - | tail -n +12 | head -n11

###################################################

cat - | tail -n20

###################################################

cat - | tail -c20
