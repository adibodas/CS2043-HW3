#!/bin/bash

tr [:space:] "\n" <frankenstein.txt | tr [:punct:] "\n" | tr [A-Z] [a-z] | grep -v "^\s*$" | sort | uniq -c | sort -bnr | fgrep -v -f prepositions.txt | head -n 100
