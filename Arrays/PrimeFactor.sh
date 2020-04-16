#!/bin/bash -x
 read -p "Enter n: " num;
	i=0;
while (( $num%2==0 ))
	do
		arrayPrFac[i]=2;
		num=$(( $num / 2));
		(i++));
   done
for (( j=3; $j*$j<=$num; j=$j+2 ))
	do
			while (( $num%$j==0 ))
				  do
						arrayPrFac[i]=$j;
						num=$(( $num / $j));
						((i++));
				  done
  done
	if (( $num >= 2 ))
	  then
		 arrayPrFac[i]=$num;
	fi
	  echo given the Prime Factor is ${arrayPrFac[@]};


