#!/bin/bash

# -------------------------------------
# Day 3: arguments.sh
# Description: Demonstrates usage of positional arguments and looping through them
# -------------------------------------

echo "🎯 Script Name: $0"
echo "📦 Total Arguments: $#"
echo "🧩 All Arguments: $@"

# Validate number of arguments
if [ $# -lt 2 ]; then
  echo "⚠️ Usage: $0 <Name> <Role>"
  exit 1
fi

name=$1
role=$2

echo ""
echo "Hello, $name! You are assigned the role of $role."

echo ""
echo "Looping through all arguments:"
for arg in "$@"; do
  echo "👉 $arg"
done
