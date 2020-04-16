#!/bin/bash -x
max=10;
min=999999;
for (( i=0; i<10; i++ ))
	do
		arrRandomNum[i]=$((RANDOM%900 + 100));
			if (( $max <= ${arrRandomNum[i]} ))
				then
					max=${arrRandomNum[i]};
			fi
			if (( $min >= ${arrRandomNum[i]} ))
				then
					min=${arrRandomNum[i]};
			fi
	done
max2=10;
min2=99999;
	for (( i=0; i<10; i++ ))
	do
		if (( $max2 <= ${arrRandomNum[i]} )) && (( ${arrRandomNum[i]} != $max ))
			then
				max2=${arrRandomNum[i]};
		fi
		if (( $min2 >= ${arrRandomNum[i]} )) && (( ${arrRandomNum[i]} != $min ))
			then
				min2=${arrRandomNum[i]};
		 fi
	done
echo Second max = $max2 and Second min = $min2;
