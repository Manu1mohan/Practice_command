#!/bin/zsh
disk_space()
{
        disk_usage=$(df / | grep / | awk '{print $5 }' | sed 's/%//g')
        echo "Current disk usage: $disk_usage%"
        if [ "$disk_usage" -ge 50 ]
        then
                echo "Warning: Disk usage has reached $disk_usage%"
        fi
}
disk_space
