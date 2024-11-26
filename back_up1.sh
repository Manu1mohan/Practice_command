#!/bin/bash

# File to back up
FILE="hi_dev.sh"

# Backup directory
BACKUP_DIR="backup_dir"

# Timestamp for the backup
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Backup filename
BACKUP_FILE="$BACKUP_DIR/file_backup_$TIMESTAMP.txt"

# Create backup
cp "$FILE" "$BACKUP_FILE"

echo "Backup of $FILE created at $BACKUP_FILE."

