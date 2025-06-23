#!/bin/bash

while true; do
    echo -e "\n--- Main Menu ---"
    echo "1. Show Current Users"
    echo "2. Show Uptime"
    echo "3. Show Logged-in Users"
    echo "4. Exit"
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1) who ;;
        2) uptime ;;
        3) w ;;
        4) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid choice. Please select between 1 and 4." ;;
    esac
done
