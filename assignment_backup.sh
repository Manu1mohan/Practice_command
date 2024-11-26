#!/bin/zsh

# File to back up
FILE="hi_dev.sh"

# Backup directory
BACKUP_DIR="backup_dir"

# Backup filename
BACKUP_FILE="$BACKUP_DIR/new_backup.sh"

# Create backup
cp "$FILE" "$BACKUP_FILE"

echo "Backup of $FILE created at $BACKUP_FILE."
