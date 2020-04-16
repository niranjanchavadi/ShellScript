#!/bin/bash -x
 palindromeNum() {
	num=$1;
	tem=$num;
	sum=0;
	while (( $num > 0 ))
	do
		rem=$(($num%10));
		sum=$(($sum*10+$rem));
		num=$(($num/10));
	done
	echo $sum
}
read -p "Enter the num to print its palindromeNum " num
sum="$( palindromeNum $num )"
tem=$num
if [ $tem -eq $sum ];
then
	echo $tem "is a palindromeNum"
else
	echo $tem "is not a palindromeNum"
fi
