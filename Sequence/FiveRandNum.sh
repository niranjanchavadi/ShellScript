#!/bin/bash -x
a=$((RANDOM%100));
b=$((RANDOM%100));
c=$((RANDOM%100));
d=$((RANDOM%100));
e=$((RANDOM%100));
avg=$(($a+$b+$c+$d+$e));
echo $avg;
d=$((avg/5));
echo $d
