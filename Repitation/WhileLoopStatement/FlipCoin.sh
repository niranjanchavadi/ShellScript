#!/bin/bash -x
head=0;
tail=0;

while (( $head!=11 && $tail!=11 ))
	do
		radndom=$((RANDOM%2+));
			if (( random==1 ));
				then
					((head++))
				else
					((tail++))
			fi
 done
 echo $head "Heads wins"
 echo $tail "Tail wins"
