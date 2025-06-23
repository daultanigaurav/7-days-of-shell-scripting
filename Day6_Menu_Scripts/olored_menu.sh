#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

while true; do
    echo -e "${GREEN}*** Colored Menu ***${NC}"
    echo "1. Display Calendar"
    echo "2. Display Time"
    echo "3. Exit"
    read -p "Choose [1-3]: " choice

    case $choice in
        1) cal ;;
        2) date ;;
        3) echo "Exiting..."; break ;;
        *) echo "Invalid input. Try again." ;;
    esac
done
