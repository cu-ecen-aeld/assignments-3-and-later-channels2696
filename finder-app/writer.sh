#!/bin/sh

WRITEFILE=$1
WRITESTR=$2

if [ -z $WRITEFILE ] || [ -z $WRITESTR ]
then
	echo Parameters not specified
	exit 1
fi

IFS="/"

for dirs in $WRITEFILE
do 
	FILE=$dirs
done

WAY=${WRITEFILE%"$FILE"}

IFS=

mkdir -p $WAY
echo $WRITESTR > $WRITEFILE


