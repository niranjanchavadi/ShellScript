#!/bin/bash -x
declare -A brthmnths;
#brthmnths=( [@]=0 )
num=50;
for (( i=1; i<=num; i++ ))
	do
		brthmnth=$((RANDOM%12+1));
		brthmnths[$brthmnth]=$(( ${brthmnths[$brthmnth]}+1 ));
done
	echo "brthmnth the  Number of People "
	for (( i=1; i<=12; i++ ))
		do
			echo "   $i    --->  ${brthmnths[$i]}"
	done
