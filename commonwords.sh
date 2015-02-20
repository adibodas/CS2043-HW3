#!/bin/bash

curl http://www.cs.cornell.edu/courses/cs2043/2015sp/assignments/superbowl.html | 
	sed '/<.*>/d' | 
	tr [:space:] "\n" | tr [:punct:] "\n" | tr [A-Z] [a-z] | 
	grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 100