#!/bin/bash
#Program to know whether year is leap year or not
echo "Enter the year (YYYY)"
read year
if [ ${#year} -eq 4 ]
then
  if [ $((year % 4)) -eq 0 ] || [[ $((year % 400)) -eq 0 &&  $((year % 100)) -ne 0 ]]
  then
     echo "its a Leap Year"
  else
     echo "its not a Leap Year"
   fi
else
  echo "Year should have four digits." 
fi

 




