#!/usr/bin/env bash


cat - | uniq

###################################################

# case-sensitive
cat - | uniq -c | sed 's/^[[:space:]]*//g'
# OR
cat - | uniq -c | tr -s " " " " | cut -c2-

###################################################

# case-insensitive
cat - | uniq -c -i | sed 's/^[[:space:]]*//g'
# OR
cat - | uniq -c -i | tr -s " " " " | cut -c2-

###################################################

# only print unique lines
cat - | uniq -u
