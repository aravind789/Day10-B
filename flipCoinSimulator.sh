#!/bin/bash -x
random=$(($RANDOM%2))
if [ $random -eq 1 ]
then
	echo "HEADS WINS"
else
	echo "TAILS WINS"
fi

