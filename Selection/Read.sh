#!/bin/bash -x
read -p "Enter the number to trace the values like 1,10,100,1000 to print into words " number
if [ $number -eq 1 ];
	then
		echo "unit";
			elif [ $number -eq 10 ];
				then
					echo " ten";
			elif [ $number -eq 100 ];
				then
					 echo " hundread";
			elif [ $number -eq 1000 ];
			   then
				   echo " Thousand";
			elif [ $number -eq 10000 ];
				then
					echo "ten thousand";
	 fi
