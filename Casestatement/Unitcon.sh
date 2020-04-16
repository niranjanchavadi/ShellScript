#!/bin/bash -x
echo "Enter 1 to convert the feet to inch"
echo "Enter 2 to convert the  feet to meter"
echo "Enter 3 to convet the  inch to feet"
echo "Enter 4 to convert the  meter to feet"
read -p "Enter your the  value here " digit
read -p "Enter the value that you want to convert " value
inchConvert=12
case $digit in
	1)
		inch=$(($inchConvert*$value));;
	2)
		meter=$(echo "scale=3;$value*0.3048" |bc);;
	3)
		feet=$(echo "scale=3;$value/$inchConvert" |bc);;
	4)
		feet=$(echo "scale=3;$value/0.3048" |bc);;
	*)
		echo "Invalid innput";;
esac
