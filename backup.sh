#!/bin/bash

# Usage: ./backup.sh <source_file> <backup_directory>

# Check if the correct number of arguments are provided
#if [ "$#" -ne 2 ]; then
#  echo "Usage: $0 <> <backup_directory>"
#  exit 1
#fi

hi_dev.sh=$1
BACKUP_DIR=$2

# Check if the source file exists
if [ ! -f "$SOURCE_FILE" ]; then
  echo "Error: Source file '$SOURCE_FILE' does not exist."
  exit 1
fi

# Check if the backup directory exists, create it if it doesn't
if [ ! -d "$BACKUP_DIR" ]; then
  echo "Backup directory '$BACKUP_DIR' does not exist. Creating it..."
  mkdir -p "$BACKUP_DIR"
fi

# Generate a timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Get the base name of the source file
BASE_NAME=$(basename "$SOURCE_FILE")

# Create the backup file with a timestamp
BACKUP_FILE="$BACKUP_DIR/${BASE_NAME}_backup_$TIMESTAMP"

# Copy the file
cp "$SOURCE_FILE" "$BACKUP_FILE"

# Confirm the backup
if [ $? -eq 0 ]; then
  echo "Backup of '$SOURCE_FILE' created at '$BACKUP_FILE'."
else
  echo "Error: Backup failed."
  exit 1
fi

