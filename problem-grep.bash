#!/usr/bin/env bash


# -w, --word-regexp
grep -w "the"

###################################################

# -w, --word-regexp
# -i, --ignore-case
grep -w -i "the"

###################################################

# -w, --word-regexp
# -i, --ignore-case
# -v, --invert-match
grep -w -i -v "that"

###################################################

# -w, --word-regexp
# -i, --ignore-case
grep -w -i "the\|that\|then\|those"
# OR
grep -w -i -E "the|that|then|those"
# OR
grep -w -i -e "the" -e "that" -e "then" -e "those"

###################################################

# Match two or more consecutive digits optionally separated by a space
grep -E "1\s?1+|2\s?2+|3\s?3+|4\s?4+|5\s?5+|6\s?6+|7\s?7+|8\s?8+|9\s?9+|0\s?0+"
# OR
grep -E "([[:digit:]])\s?\1+"
