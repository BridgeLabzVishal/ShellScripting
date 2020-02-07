#!/bin/bash
#Program implemented to get euclidean distance using two points
euclideanDistance(){
echo "Enter first x-axis coordinate : "
read x
echo "Enter first y-axis coordinate : "
read y
echo "Enter second x-axis coordinate : "
read a
echo "Enter second x-axis coordinate : "
read b

Point1=$( expr $x - $a )
Point2=$( expr $y - $b )

xaxis=$( expr $Point1 \* $Point1 )
yaxis=$( expr $Point2 \* $Point2 )

Total=$( expr $xaxis + $yaxis )
Distance=$(echo "sqrt ( $Total )" | bc -l) ;
RoundValue=`printf "%.2f" $Distance`
echo "Distance between ($x,$y) and ($a,$b) is $RoundValue"
}

euclideanDistance

