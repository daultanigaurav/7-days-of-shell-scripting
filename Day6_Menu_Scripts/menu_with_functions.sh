#!/bin/bash

show_system_info() {
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime -p)"
    echo "Logged in users:"
    who
}

backup_home() {
    tar -czf "$HOME/backup_$(date +%F).tar.gz" "$HOME"
    echo "Backup created in home directory."
}

while true; do
    echo -e "\n--- Function-Based Menu ---"
    echo "1. Show System Info"
    echo "2. Backup Home Directory"
    echo "3. Exit"
    read -p "Choose [1-3]: " option

    case $option in
        1) show_system_info ;;
        2) backup_home ;;
        3) echo "Done!"; exit ;;
        *) echo "Invalid choice." ;;
    esac
done
