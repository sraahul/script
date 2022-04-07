#!/bin/bash
echo "enter the number"
read num
ls -lrt | awk 'NR>1 {print $NF}' >ex
total=`cat ex | wc -l`

while read line
do

	if [ $total -gt $num ]
	then
	       #	rm -rf $line
		echo $line
		total=`expr $total - 1`
	fi
done < ex
