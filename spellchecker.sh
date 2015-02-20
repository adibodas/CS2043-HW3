#!/bin/bash


# cat $1 | tr -d [:punct:] | tr [:space:] "\n" | grep -ixwFv -f english.txt
cat $1 | tr [:punct:] " " | tr [:space:] "\n" |
while read to_check ; do
	grep -xiw "$to_check" english.txt > trash.txt
	if [ -s trash.txt ] ; then 
		x=true
	else
		echo "$to_check"
	fi
	rm -r trash.txt
done
