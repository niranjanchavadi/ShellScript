#!/bin/bash -x
read -p "enter the factorial  to you want enter " n
	factorial=1;
for  (( i=1; i<=$n; i++ ))
	do
		factorial=$(( $factorial*$i ))
done
echo $factorial
