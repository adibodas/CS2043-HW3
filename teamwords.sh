#!/bin/bash

	curl http://www.cs.cornell.edu/courses/cs2043/2015sp/assignments/superbowl.html |
	grep -oiE "(\S+ ){$1}(seahawks|patriots)( \S+){$2}"