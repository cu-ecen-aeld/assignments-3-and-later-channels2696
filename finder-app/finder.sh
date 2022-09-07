#!/bin/sh
 
DIRECTORY=$1
PATTERN=$2

if [ -z $PATTERN ] || [ -z $DIRECTORY ]
then
	echo "Parameter not specified"
	exit 1

fi

if [ -d $DIRECTORY ]
then
	nfiles=$( grep -rl $PATTERN $DIRECTORY | wc -l)
        nlines=$( grep -r $PATTERN $DIRECTORY | wc -l)
	echo "The number of files are $nfiles and the number of matching lines are $nlines"
else
	echo Directory does not exist or is a file
	exit 1
fi
