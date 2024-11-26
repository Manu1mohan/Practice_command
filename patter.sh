#!/bin/zsh
echo "Enter the pattern"
read pattern
file="/Users/mac/Devops/shell"
grep -l "$pattern"  
if [ $? -eq 0 ]
then
echo "Pattern found in file: $file"
else
echo "Pattern not found in file: $file"
fi
