#!/bin/bash

# -------------------------------------
# Day 3: functions.sh
# Description: Demonstrates function declaration, parameters, return values
# -------------------------------------

# Function to greet the user
greet() {
  echo "👋 Hello, $1! Welcome to Day 3 of Shell Scripting."
}

# Function to check if a number is even or odd
is_even() {
  if [ $(( $1 % 2 )) -eq 0 ]; then
    echo "$1 is even."
    return 0
  else
    echo "$1 is odd."
    return 1
  fi
}

# Main Execution
echo "=== Function Demo Start ==="
greet "Gaurav"

echo ""
echo "Checking if numbers are even or odd:"
is_even 8
echo "Return status for 8: $?"

is_even 11
echo "Return status for 11: $?"

echo "=== Function Demo End ==="
