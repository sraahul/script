#!/bin/bash
echo "enter the patter which u neeed to find"
read pat

grep -R -i -l $pat * > output
if [ $? -eq 0]
then 
	echo "pattern $pat is found in below file"
	cat output
else
	echo "file does not contain pattern $pat"
fi
