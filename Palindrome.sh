#!/bin/bash
# Program to check whether number is palindrome or not.

echo "Enter a number : "
read number

Temp=$number
Reverse=""
while [ $Temp -gt 0 ]
do
   Remainder=$(expr $Temp % 10) 
   Temp=$(expr $Temp / 10)
   Reverse=$( echo ${Reverse}${Remainder} )
done
if [ $number -eq $Reverse ]
then 
   echo "Number is Palindrome"
else
   echo "Number is not Palindrome"
fi
