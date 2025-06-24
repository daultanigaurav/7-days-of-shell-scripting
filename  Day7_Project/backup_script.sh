```bash
#!/bin/bash

# Backup Script: Takes source and destination directory as input.

if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi

SRC="$1"
DEST="$2"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

if [ ! -d "$SRC" ]; then
    echo "Source directory does not exist."
    exit 1
fi

mkdir -p "$DEST"
tar -czf "$DEST/$BACKUP_NAME" "$SRC" && echo "Backup successful: $DEST/$BACKUP_NAME"