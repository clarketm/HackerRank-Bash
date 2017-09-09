#!/usr/bin/env bash


# lexicographical
cat - | sort

###################################################

# lexicographical (reverse)
cat - | sort -r

###################################################

# numerical
cat - | sort -n

###################################################

# numerical (reverse)
cat - | sort -n -r

###################################################

# numerical (tab-delimited, reverse, by 2nd column)
cat - | sort -t$'\t' -n -r -k2

###################################################

# numerical (tab-delimited, by 2nd column)
cat - | sort -t$'\t' -n -k2

###################################################

# numerical (pipe-delimited, reverse, by 2nd column)
cat - | sort -t'|' -n -r -k2
