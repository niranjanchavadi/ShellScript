#!/bin/bash -x
read -p "Enter the number to trace the values like 1,10,100,1000 to print into words " number
case  $number in
		"1" )
	echo "unit" ;;
		"10" )
	echo " ten";;
		"100" )
	echo " hundread" ;;
		"1000" )
	echo " Thousand" ;;
		"10000" )
	echo "ten thousand" ;;
				* )
	echo "Invalid Number"
esac
