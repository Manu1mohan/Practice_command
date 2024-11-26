#!/bin/bash
echo "Enter num1"
read a
echo "Enter num2"
read b

sum=$((" $a + $b "))
echo $sum

sub=$((" $a - $b "))
echo $sub

mul=$((" $a * $b "))
echo $mul

if [ $a -gt $b ]
then
div=$((" $a / $b "))
else
div=$((" $b / $a "))
fi
