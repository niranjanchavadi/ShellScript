#!/bin/bash -x
read -p "Enter the prime number number you want enter  " n
m=0;

flag=0;

m=$n/2;
      if(( $n == 0 || $n == 1 )) 
			then
				echo $n " not a prime number";
			fi
 
         for (( i=2; i<=$m; i++ )) 
				do
					if (( $n%$i==0)) 
						then
								echo $n " not a prime number";
									flag=1;
								break;
						fi
			done
        
         if (( $flag==0 ))
				then
					echo $n + " is a prime number"
			   fi
