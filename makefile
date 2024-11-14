#!/usr/bin/env bash
# File: makefile

#  This file is the makefile for Coursera's Unix Workbench Assignment.  
#  This file only creates the file README.md.
#  To this end, this file needs to access the contents of the program guessinggame.sh. 

all: README.md

README.md: guessinggame.sh

#  Create a file named README.md:
	touch README.md

#  Print in README.md the title of the project:
	echo "Peer-graded Assignment:" Bash, Make, Git, and GitHub >> README.md

#  Print in README.md the date and time when the following command is executed, presumably from make:
	echo $(shell date) >> README.md

#  Counts lines of code in the file guessinggame.sh:
# 	To this end, do not count blank lines (which are lines with nothing between start ^ and finish $), 
#  	and do not count comment lines (which are lines starting with any number of spaces or tabs (\s*) followed by #),
#	here using egrep and passing the result to wc -l to count the number of remaining lines:
	echo $(shell egrep  -v "^$|^\#" guessinggame.sh | wc -l) >> README.md

clean: 
	rm README.md
