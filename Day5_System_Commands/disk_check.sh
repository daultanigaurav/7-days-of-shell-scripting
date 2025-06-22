#!/bin/bash

# Disk usage warning threshold
THRESHOLD=80

echo "📦 Checking disk usage..."

df -h | awk 'NR==1 || /\/$/ {print $5, $6}' | while read output; do
  usep=$(echo $output | awk '{print $1}' | sed 's/%//g')
  partition=$(echo $output | awk '{print $2}')
  if [ "$usep" -ge "$THRESHOLD" ]; then
    echo "⚠️ Warning: $partition is ${usep}% full."
  else
    echo "✅ $partition usage is under control: ${usep}%."
  fi
done
