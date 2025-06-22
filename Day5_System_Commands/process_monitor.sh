#!/bin/bash

echo "🧩 Top 5 Processes by Memory Usage"
echo "----------------------------------"

ps aux --sort=-%mem | awk 'NR<=6 {print $1, $2, $3, $4, $11}'
