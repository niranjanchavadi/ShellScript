#!/bin/bash -x
read -p "Enter the power of two " number
power=1;
for (( index=1; index<=$number; index++ ))
	do
	  power=$(( $power*2 ));
 done
#echo $power;
