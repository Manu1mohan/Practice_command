#!/bin/bash

# Get the disk usage percentage of the current directory
space=$(df -h . | tail -1 | awk '{print $(NF-1)}' | sed 's/%//g')

# Check if the disk usage is greater than or equal to 90%
if [ "$space" -ge 30 ]; then
  echo "Disk storage is more than 90%. Please take appropriate action."
# later part | mail -s "Disk storage is full" -c "xyz.com@gmail.com"
fi

