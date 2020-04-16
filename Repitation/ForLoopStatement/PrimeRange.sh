#!/bin/bash -x
read -p "enter the number range of prime number" n 
primeNumbers=" ";
for (( i=2; i<=$n; i++ ))  	   
	do 		 		  
		counter=0; 		  
		for (( num=$i; num>1; num-- ))
			do
				if (( $i%$num==0 ))
					then
						counter=$(( $counter +1 ));
					fi
		done
				if (($counter==1))
					then

						primeNumbers=$primeNumbers$i" "; 
					fi
done
echo $primeNumbers
