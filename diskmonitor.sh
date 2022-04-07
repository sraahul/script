#!/bin/bash
size=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%//g'`
if [ $size -gt 30 ]
then
	echo "the disk space reached thrushold limit" | mail -s "reached maximum thrushold of $size" rahulniru0544@gmail.com,harshitha.mit@gmail.com
fi
