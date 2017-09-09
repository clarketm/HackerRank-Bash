#!/usr/bin/env bash

declare -A matrix
declare -i segment_length=16
declare -i total_rows=63
declare -i total_cols=100
declare -i number_splits=1

Y() {
  local -i row=$1 col=$2 length=$3 split=$4

  # Leg (|)
  leg $row $col $length ; row=$?

  # Fork (V)
  fork $row $col $length $split
}

leg() {
  local -i row=$1 col=$2 length=$3

  while (( length-- > 0 )); do
    matrix[$((row--)),$col]=1
  done

  # return current `row`
  return $row
}

fork() {
  local -i row=$1 col_left=$2 col_right=$2 length=$3 split=$4 mid=$((length/2))

  while (( length-- > 0 )); do
    matrix[$row,$((--col_left))]=1
    matrix[$row,$((++col_right))]=1
    ((row--))
  done

  # Sub trees (vv, vvvv, ...)
  if (( --split > 0 )); then
    Y $row $col_left $mid $split
    Y $row $col_right $mid $split
  fi
}

fill_matrix() {
  for (( row=0; row<total_rows; row++ )); do
    for (( col=0; col<total_cols; col++)); do
      matrix[$row,$col]=_
    done
  done
}

print_tree() {
  for (( r=0; r<total_rows; r++ )); do
    for (( c=0; c<total_cols; c++)); do
      echo -n ${matrix[$r,$c]}
    done
    echo
  done
}

input() {
  read -r -n1 -t5 -p "Enter # of splits: " number_splits
  # read -r -n1 -t5 number_splits
  echo
}

main() {
  # User input
  input

  # Initialize `matrix` with underscores(_)
  fill_matrix

  # Recurse
  # [last row index] [ center col index]  [segment length]  [number of splits]
  Y $((total_rows-1)) $(((total_cols-1)/2)) $segment_length $number_splits

  # Print fractal tree
  # ___1___1___
  # ____1_1____
  # _____1_____
  # _____1_____
  print_tree
}

# INIT
main
