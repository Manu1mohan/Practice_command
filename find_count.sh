#!/bin/bash
echo "enter the name to check"
read name
if [ -f $name ]
then
echo "$name is a file" 
wc -l $name
elif [ -d $name ]
then
echo "$name is a directory" 
ls $name|  wc -l
else
echo "$name not exist"
fi
