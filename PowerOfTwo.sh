#!/bin/bash
#Program to get the power of two as well as to check generate number is leap year or not

isPower(){
echo "Enter the date : "
read Date
Power=2;
if [ $Date -lt 31 ]
then
  for (( i = 0; i<$Date-1; i++ ))
  do
    Power=$(expr $Power \* 2 )
    echo $Power	
  done
else
  echo "Number enter between 0 to 31"
fi
}

isPower
if [ $Power -gt 1582 ]
then 
   if [ ${#Power} -eq 4 ]
   then
      if [ $((Power % 4)) -eq 0 ] || [[ $((Power % 400)) -eq 0 &&  $((Power % 100)) -ne 0 ]]
      then
         echo "its a Leap Year"
      else
         echo "its not a Leap Year"
      fi
   else
     echo "Year should have four digits." 
   fi
else 
  echo "Invalid year"
fi


