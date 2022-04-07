#!/bin/bash
echo "enter the number1"
read a
echo "enter the number2"
read b
echo "enter the number3"
read c
echo "enter the number4"
read d

if [ $a -gt $b -a $a -gt $c -a $a -gt $d ]
then
	echo "value of $a is greater than $b and $c and $d"
elif [ $b -gt $a -a $b -gt $c -a $b -gt $d ]
then
	echo "value of $b is greater than $a and $c and $d"
elif [ $c -gt $a -a $c -gt $b -a $c -gt $d ]
then
	echo "value of $c is greater than $a and $b and $d"
else
	echo "value of $d is greater than $a and $b and $c"
fi
