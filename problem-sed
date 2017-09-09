#!/usr/bin/env bash


# Replace `the` with `this`
sed 's/\bthe\b/this/'

###################################################

# Replace `thy` with `your`
# g -> global
# I -> case-insensitive
sed 's/\bthy\b/your/gI'

###################################################

# Replace `thy` with `your` and surround with brackets '{}'
# g -> global
# I -> case-insensitive
sed -E 's/\b(thy)\b/{\1}/gI'
# OR
sed 's/\b\(thy\)\b/{\1}/gI'

###################################################

# Replace the first 12 digits of credit card number with `*`
# e.g. 1234 5678 1234 5678 => **** **** **** 5678
sed -E 's/[[:digit:]]{4} /**** /g'
# OR
sed -E 's/^[[:digit:][:space:]]{15}/**** **** **** /g'

###################################################

# Reverse the ordering of 4-digit segments in each credit card number
# e.g. 1234 5678 8765 4321 => 4321 8765 5678 1234
sed -E 's/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1/'
# OR
sed -E 's/([0-9]+) ([0-9]+) ([0-9]+) ([0-9]+)/\4 \3 \2 \1/'
# OR
sed 's/\([0-9]\{4\}\) \([0-9]\{4\}\) \([0-9]\{4\}\) \([0-9]\{4\}\)/\4 \3 \2 \1/'
