#!/bin/bash -x
count=0
number_of_total_heads=0
number_of_total_tails=0
read -p "Enter how many times to flip the coin " num
while [ $count -lt $num ]
do
	random=$(($RANDOM%2))
	if [ $random -eq 1 ]
	then
		echo "HEADS WON"
		((number_of_total_heads++))
	else
		echo "TAILS WON"
		((number_of_total_tails++))
	fi
		((count++))
done
echo "Head won $number_of_total_heads times"
echo "Tail won $number_of_total_tails times"
