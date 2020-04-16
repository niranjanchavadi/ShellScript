	#!/bin/bash -x
	read -p "Enter the number" a
	read -p "Enter the number" b
	read -p "Ente the number" c
	operation1=$(($a+$b*$c));
	operation2=$(($a%$b+$c));
	operation3=$(($c+$a/$b));
	opertion4=$(($a*$b+$c));
	echo $operation1;
	echo $operation2;
	echo $opaertion3;
	echo $operation4;
