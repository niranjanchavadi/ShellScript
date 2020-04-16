#!/bin/bash -x
isPrime() {
	num=$1;
	flg=0;
	for (( cnt=2; cnt<$num/2; cnt++ ))
		do
			if [ $(($num%$cnt)) -eq 0 ];
				then
					flg=1;
						echo $num "is not a prime num"
					break
				esle
					flg=0;
						echo $num "is a prime num"
			fi
	done
	echo $num
	return $flg
}

isPalindrome() {
	num=$1
	temp=$num
	sum=0;
while (( $num > 0 ))
	do
		rem=$(($num%10))
		sum=$(($sum*10+$rem))
		num=$(($num/10))
done
	echo "$( isPrime $sum )"
}

read -p "Enter the num to check prime and it is palindrome or not " num
prime="$( isPrime $num )"
palindrome="$( isPalindrome $num )"
flg=$?

if (( $flg==0  && $num==$palindrome ))
	then
		echo $num "it is prime and also a prime palindrome"
	else
		echo $num " it is not a prime palindrome "

 fi
