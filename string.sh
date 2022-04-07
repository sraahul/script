#!/bin/bash
echo "enter the string"
read string

if [ -f $string ]
then 
	echo "the $string is a file"
elif [ -d $string ]
then
	echo "the $string is a directory"
elif [ -L $string ]
	echo "the $string is a link"
else
	echo " the $string doesnt exist"
fi
   
