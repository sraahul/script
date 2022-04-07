#!/bin/bash
echo "enter the value of a"
read a
echo "enter the value of b"
read b

echo "enter the number"
read num

case $num in
	1)
		c=`expr $a + $b`
		echo "the sum of $a and $b is $c"

	;;
	2)
		c=`expr $a - $b`
		echo "the subtraction of $a and $b is $c"
	;;
	3)
		c=`expr $a \* $b`
		echo "the multiplication of $a and $b is $c"
	;;
	4)
		c=`expr $a / $b`
		echo "the division of $a and $b is $c"
	;;
	5)
		arr="$a $b"
		for i in $arr
		do

			res=1
			temp=$i
			while [ $i -gt 0 ]
			do
				res=`expr $i \* $res`
				i=`expr $i - 1`
			done
			echo "the factorial is $temp is $res"
		done
	;;
	6)
		array="$a $b"
		lenght=${#array}
		rev=""
		while [ $lenght -gt 0 ]
		do
			char=`echo $array | cut -c $lenght`
			lenght=`expr $lenght - 1`
			rev=$rev$char
			
		done
			echo "the reverse of string is $rev"
	;;
		
esac
