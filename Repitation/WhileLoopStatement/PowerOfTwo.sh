#!/bin/bash -x
read -p "Enter the number power of the two : " n
power=1;
while (( $power <= $[ 2**$n ] && $power<256 ))
	do
		power=$(( $power*2 ))
		echo $power
	done
