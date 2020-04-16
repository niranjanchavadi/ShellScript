#!/bin/bash -x
for (( i=0; i<10; i++ ))
	do
	  arrRandomNum[i]=$((RANDOM%900 + 100));
done
for (( i=0; i<9; i++ ))	
  do
	  min=$i;
	  for (( j=$i+1; j<10; j++ ))
		do
			if (( ${arrRandomNum[min]} >= ${arrRandomNum[j]} ))
			  then
					min=$j;
			  fi
	  done
	  if [ $min -ne $i ]
		  then
			temp=${arrRandomNum[min]};
			arrRandomNum[min]=${arrRandomNum[i]};
			arrRandomNum[i]=$temp;
	  fi
done
 echo Second max = ${arrRandomNum[8]} and Second min = ${arrRandomNum[1]};

