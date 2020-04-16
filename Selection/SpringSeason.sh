#!/bin/bash -x
read -p "Enter the Day" date
read -p "Enter the Month " month
if [ $month -eq 3 -a $date -ge 20 -a $date -le 31 -o $month -eq 4 -a $date -ge 1 -a $date -le 30 -o $month -eq 5 -a $date -ge 1 -a $date -le 31 -o $month -eq 6 -a $date -ge 1 -a $date -le 20 ];
	then
		echo "The given input is true";
	else
		echo false;
 fi
