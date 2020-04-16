#!/bin/bash 
#read -p "think about the numbers between 1 to 1000 : " num;
low=1;
high=1000;
while (( $high>$low ))
   do
      mid=$(( $(($low+$high))/2 ));
			echo "press 1 for guess the number is lies between $low and $mid else press 2 ";
			read -p "input is : " input
        if [ $(($high-$low)) -eq 1 ]
				then  
					echo $high;
            break;
			fi
        if [ $input -eq 1 ]
				then
              high=$mid;
				else
              low=$mid;
			fi
  done
