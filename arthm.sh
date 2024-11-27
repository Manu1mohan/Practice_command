#!/bin/zsh
echo "Enter num1"
read a
echo "Enter num2"
read b

sum=$((" $a + $b "))
echo "addition of the above number is :$sum"

sub=$((" $a - $b "))
echo "substration of the above number is :$sub"

mul=$((" $a * $b "))
echo "Multplication of the above number is :$mul"

if [ $a -gt $b ]
then
div=$((" $a / $b "))
else
div=$((" $b / $a "))
fi
echo "Division  of the above number is :$div"
