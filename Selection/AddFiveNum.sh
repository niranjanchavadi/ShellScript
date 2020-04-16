#!/bin/bash -x
fir=$[RANDOM%900+100];
sec=$[RANDOM%900+100];
thir=$[RANDOM%900+100];
fou=$[RANDOM%900+100];
fiv=$[RANDOM%900+100];
if [ $fir -lt $sec ];
	then 
		max=$sec;
		min=$fir;
	else
		max=$fir;
		min=$sec;
fi
if [ $max -lt $thir ];
	then
		max=$thir;
	elif [ $max -lt $fou ];
		then
			max=$fou;
	elif [ $max -lt $fiv ];
		then
			max=$fiv;
	else
			max=$max;
fi
if [ $min -gt $thir ];
	then
			min=$thir;
		elif [ $min -gt  $fou ];
			then min=$fou;
				elif [ $min -gt $fiv ];
					then min=$fiv;
				else 
					min=$min;
	fi
echo "the min value is " $min
echo "the max value is " $max
