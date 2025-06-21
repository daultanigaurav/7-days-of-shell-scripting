#!/bin/bash

# -------------------------------------
# file_exist_check.sh
# Description: Check if a file or directory exists and show permissions
# -------------------------------------

echo "Enter a file or directory name:"
read name

if [ -e "$name" ]; then
  echo "✅ '$name' exists."

  if [ -f "$name" ]; then
    echo "📄 It is a regular file."
  elif [ -d "$name" ]; then
    echo "📁 It is a directory."
  fi

  # Permission checks
  [ -r "$name" ] && echo "🔓 Readable"
  [ -w "$name" ] && echo "✍️ Writable"
  [ -x "$name" ] && echo "🚀 Executable"
else
  echo "❌ '$name' does not exist."
fi
