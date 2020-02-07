#!/bin/bash
#Program to get the prime factorization of number 
echo "Enter a number to get prime factors : "
read number
for (( i = 2; i * i <= $number; i++ )) 
do
  while [ $(expr $number % $i ) -eq 0 ]
  do
    echo $i
    number=$(expr $number / $i )
  done
done
if [ $number -gt 1 ]
then
   echo $number
fi
