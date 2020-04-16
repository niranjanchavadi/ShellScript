#!/bin/bash -x
echo "Enter the (inchs) : "
read  inches
echo "Enter the foot in lenth "
read length
echo "enter the foot in width"
read width
echo " how much no of plote "
read n
area=$[$length*$width];
meterfoo=$(echo "scale=6;3.280849" |bc);
meter=$(echo "scale=4;$area/$meterfoo" |bc); 
feet=$(echo "scale=2;$inches/12" |bc);
acre=$(echo "scale=4;$area/43560" |bc);
total=$(echo "scale=6;$acre*$n" |bc);
echo "Total meter is  : $meter ";
echo "Total feet is : $feet ";
echo "Total acre is : $total";
