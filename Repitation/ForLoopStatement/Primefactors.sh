#!/bin/bash -x
read -p "Enter the n " n

	for(( i=2; i<=$n; i++ ))
	 do
			while (($n%$i==0))
				do
					primeFactor=$primeFactor$i" ";
					n=$((n/i))
			done
   done
echo $primeFactor
