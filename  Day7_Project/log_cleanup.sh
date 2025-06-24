```bash
#!/bin/bash

# Logs Cleanup Script: Deletes log files older than given days.

LOG_DIR="/var/log"
DAYS_OLD=7

read -p "Enter log directory [default: /var/log]: " user_dir
read -p "Enter age in days to delete logs [default: 7]: " user_days

LOG_DIR=${user_dir:-/var/log}
DAYS_OLD=${user_days:-7}

if [ ! -d "$LOG_DIR" ]; then
    echo "Directory $LOG_DIR does not exist."
    exit 1
fi

find "$LOG_DIR" -name "*.log" -type f -mtime +$DAYS_OLD -exec rm -v {} \;
echo "Logs older than $DAYS_OLD days deleted from $LOG_DIR."