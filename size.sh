#!/bin/bash
size=`du -sh | sed 's/K//g'`
if [ $size -gt 300 ]
then
	echo "the disk size reached limit" | mail -s "reached maximum size limit $size" rahulniru0544@gmail.com
fi	
