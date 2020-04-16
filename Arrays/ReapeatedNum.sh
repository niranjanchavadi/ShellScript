#!/bin/bash -x
j=0;
for (( i=1; i<100; i++ ))
	do
   	  num=$i;
	     dig=$(($num%10));
    	 num=$(($num/10));
   	  if (( $num == $dig ))
   	    then
      	   arr[j]=$i;
         	 ((j++));
   		fi
 done
echo The Number with repeated digits are ${arr[@]}
