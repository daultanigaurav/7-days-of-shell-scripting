#!/bin/bash

echo "Enter a choice (start/stop/restart):"
read choice

case $choice in
    start)
        echo "Starting the service..."
        ;;
    stop)
        echo "Stopping the service..."
        ;;
    restart)
        echo "Restarting the service..."
        ;;
    *)
        echo "Invalid option"
        ;;
esac
