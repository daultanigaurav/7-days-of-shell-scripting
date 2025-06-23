#!/bin/bash

# Simple menu using select

echo "Choose an option:"
select option in "Show Date" "List Files" "Check Disk Usage" "Quit"
do
    case $option in
        "Show Date")
            date
            ;;
        "List Files")
            ls -lh
            ;;
        "Check Disk Usage")
            df -h
            ;;
        "Quit")
            echo "Exiting..."; break
            ;;
        *)
            echo "Invalid option. Try again."
            ;;
    esac
done
