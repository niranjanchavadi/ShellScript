#!/bin/bash -x
 tempconversion(){
	val=$1
	num=$2
case $val in
		$CtoF)
			if (( $num>=0 && $num<=100 ));
				then
					tem=$(echo "scale=3;$num*9/5+32" |bc)
				fi
			;;
		$FtoC)
			if (( $num>=32 && $num<=212 ));
				then
					tem=$(echo "scale=3;($num-31)*5/9" |bc)
				fi
			;;
		*)
					echo "Invalid Input"
			;;
esac
			echo $tem
}
CtoF=1;
FtoC=2;
read -p "Enter the val of temperature " num
read -p "Enter 1 to convert celcius to fehrenheit or 2 to convert fehrenheit to celcius " val
if [ $num -ge 0 -a $num -le 212 ]
	then
		tem="$( tempconversion $val $num )";
	fi
echo $tem;
