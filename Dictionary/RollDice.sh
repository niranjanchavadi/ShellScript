#!/bin/bash -x
declare -A outcomes;
index=1;
outcomes[$index]=0;
while ((  ${outcomes[$index]}!=10 ))
	   do
				index=$((RANDOM%6+1));
				outcomes[$index]=$(( ${outcomes[$index]}+1 ));
	 done
numMaxtime=$index;
minCount=10;
echo "Value      Frequency  "
for (( index=1; index<=6; index++ ))
	do
		echo "  $index   --->    ${outcomes[$index]}"
		if [ $minCount -gt ${outcomes[$index]} ]
			then
				minCount=${outcomes[$index]}
				numMinTime=$index;
		  fi
done
echo Number that reached minimum time is $numMinTime
echo Number that reached maximum time is $numMaxtime

