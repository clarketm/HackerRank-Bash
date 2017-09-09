#!/usr/bin/env awk

{
  score = ($2+$3+$4)/3

  if (score >= 80) {
    grade = "A"
  } else if (score >= 60) {
    grade = "B";
  } else if (score >= 50) {
    grade = "C";
  } else {
    grade = "FAIL";
  }

  print $0, ":", grade;
}
