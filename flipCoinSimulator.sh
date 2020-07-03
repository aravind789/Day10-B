#!/bin/bash -x
count=0
number_of_total_heads=0
number_of_total_tails=0
limit=21
while [ $count -lt $limit ]
do
	random=$(($RANDOM%2))
	if [ $random -eq 1 ]
	then
		((count++))
		number_of_total_heads=$count
	else
		((count++))
		number_of_total_tails=$count
	fi
done
if [ $number_of_total_heads -eq $number_of_total_tails ]
then
	echo "It is a tie"
	diff1=$(($number_of_total_heads-$number_of_total_tails))
	diff2=$(($number_of_total_tails-$number_of_total_heads))
	if [ $diff1 -ge 2 -o $diff2 -ge 2 ]
	then
		((limit++))
	else
		break
	fi
fi

if [ $number_of_total_heads -eq $count ]
then
	diff=$(($number_of_total_heads-$number_of_total_tails))
	echo "HEADS WON BY DIFFERENCE:" $diff
else
	diff=$(($number_of_total_tails-$number_of_total_heads))
	echo "TAIL WON BY DIFFERENCE" $diff
fi

echo "Number of Heads" $number_of_total_heads
echo "Number of Tails" $number_of_total_tails

