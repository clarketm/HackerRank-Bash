#!/usr/bin/env bash


# Let's Echo
echo "HELLO"

# Looping and Skipping
for i in {1..99}; do
    if (( (i%2) == 1 )); then
        echo "$i";
    fi
done

# A Personalized Echo
read -r name

echo "Welcome $name"

# Looping with Numbers
for i in {1..50}; do
    echo "$i"
done

# The World of Numbers
read -r x
read -r y

echo $((x+y))
echo $((x-y))
echo $((x*y))
echo $((x/y))

# Comparing Numbers
read -r x
read -r y

if [ $x -lt $y ]; then
    echo "X is less than Y"
elif [ $x -gt $y ]; then
    echo "X is greater than Y"
elif [ $x -eq $y ]; then
    echo "X is equal to Y"
fi

# Getting started with conditionals
read -r answer

if [[ $answer =~ [Yy] ]]; then
    echo "YES"
else
    echo "NO"
fi

# More on Conditionals
read -r a
read -r b
read -r c

if [ $a -eq $b ] && [ $a -eq $c ] && [ $b -eq $c ]; then
    echo "EQUILATERAL"
elif [ $a -eq $b ] || [ $a -eq $c ] || [ $b -eq $c ]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi

# Arithmetic Operations
read -r expr

printf "%.3f" $(echo "scale=5; $expr" | bc)
