#!/bin/bash -x
Heads=1
Tails=0
NoOfWinsForHeads=0
NoOfWinsForTails=0
NoOfLoops=0
read -p "enter the no of times to loop" n
while [ $NoOfLoops -lt $n ]
do
	r=$((RANDOM % 2))
	if [ $r -eq $Heads ]
	then
		echo "Heads"
		((NoOfWinsForHeads++))
	else
		echo "Tails"
		((NoOfWinsForTails++))
	fi
	((NoOfLoops++))
done
echo "no of times Head Won is $NoOfWinsForHeads"
echo "no of times Head Won is $NoOfWinsForTails"
