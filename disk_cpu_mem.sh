#!/bin/zsh

space=$(df -h . | tail -1 | awk '{print $(NF-1)}' | sed 's/%//g')
echo "$space"

top -bn1 | awk -F " " '{print $3,$8}' 

#CPU=$(top | awk -F " " '{print $3}')
#echo "$CPU"

#memory=$(top | awk -F " " '{print $8}')
#echo "$memory"
