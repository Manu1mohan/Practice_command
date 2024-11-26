#!/bin/bash
echo "Enter the file name"
read file 
if [ -f $file ]
then
echo "$file is file"
else  
echo "$file is directory"
fi
