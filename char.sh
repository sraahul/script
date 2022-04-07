#!/bin/bash
echo "enter the name of the file"
read name
line_number=1
while read line
do
	a=`echo $line | wc -c`
	echo "the no of character in line number $line_number is $a"
	line_number=`expr $line_number + 1`
done < $name
