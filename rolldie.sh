#!/bin/bash
declare -A num
one=0
two=0
three=0
four=0
five=0
six=0
i=1
while [ true ]
do
 num[$i]=$(( RANDOM%6+1 ))
 if [ ${num[$i]} -eq 1 ]
 then
   one=$(($one+1)) 
   if [ $one -eq 10 ]
   then
       echo "Maximum time is : one"
       break
   fi
 elif [ ${num[$i]} -eq 2 ]
 then
   two=$(($two+1))
   if [ $two -eq 10 ]
   then
       echo "Maximum time is : two"
       break
   fi
 elif [ ${num[$i]} -eq 3 ]
 then
   three=$(($three+1))
   if [ $three -eq 10 ]
   then
       echo "Maximum time is : three"
       break
   fi
 elif [ ${num[$i]} -eq 4 ]
 then
   four=$(($four+1))
   if [ $four -eq 10 ]
   then
       echo "Maximum time is : four"
       break
   fi
 elif [ ${num[$i]} -eq 5 ]
 then
   five=$(($five+1))
   if [ $five -eq 10 ]
   then
       echo "Maximum time is : five"
       break
   fi
 elif [ ${num[$i]} -eq 6 ]
 then
   six=$(($six+1))
   if [ $six -eq 10 ]
   then
       echo "Maximum time is : six"
       break
   fi
 else
   echo "Wrong"
 fi
 ((i++))
done

ber=( $one $two $three $four $five $six )

min=0 max=0

for i in ${ber[@]}
do
    (( $i > max || max == 0)) && max=$i
    (( $i < min || min == 0)) && min=$i
done

if [ $min -eq $one ]
then
    echo "Minimum time is : one" 
elif [ $min -eq $two ]
then
    echo "Minimum time is : two"
elif [ $min -eq $three ]
then
    echo "Minimum time  is : three"
elif [ $min -eq $four ]
then
    echo "Minimum time  is : four"
elif [ $min -eq $five ]
then
    echo "Minimum time  is : five"
elif [ $min -eq $six ]
then
    echo "Minimum time  is : six"
else
    echo "went wrong"
fi

echo "${num[*]}"
echo "One : $one"
echo "Two : $two"
echo "Three : $three"
echo "Four : $four"
echo "Five : $five"
echo "Six : $six"
