#!/bin/bash
declare -A num
jan=0
feb=0
mar=0
apr=0
may=0
jun=0
jul=0
aug=0
sep=0
oct=0
nov=0
dec=0
for ((i=1; i<=50; i++))
do
  num[$i]=$((RANDOM%12+1))
  case ${num[$i]} in 
  1)    jan=$(($jan+1)) ;;
  2)    feb=$(($feb+1)) ;;
  3)    mar=$(($mar+1)) ;;
  4)    apr=$(($apr+1)) ;;
  5)    may=$(($may+1)) ;;
  6)    jun=$(($jun+1)) ;;
  7)    jul=$(($jul+1)) ;;
  8)    aug=$(($aug+1)) ;;
  9)    sep=$(($sep+1)) ;;
  10)   oct=$(($oct+1)) ;;
  11)   nov=$(($nov+1)) ;;
  12)   dec=$(($dec+1)) ;;
  *)    echo "Wrong"
  esac
done
echo "${num[*]}"
echo -e "\t$jan members celebrating their birthday in January   Month"
echo -e "\t$feb members celebrating their birthday in Febrary   Month"
echo -e "\t$mar members celebrati\rng their birthday in March     Month"
echo -e "\t$apr members celebrating their birthday in April     Month"
echo -e "\t$may members celebrating their birthday in May       Month"
echo -e "\t$jun members celebrating their birthday in June      Month"
echo -e "\t$jul members celebrating their birthday in July      Month"
echo -e "\t$aug members celebrating their birthday in August    Month"
echo -e "\t$sep members celebrating their birthday in September Month"
echo -e "\t$oct members celebrating their birthday in October   Month"
echo -e "\t$nov members celebrating their birthday in November  Month"
echo -e "\t$dec members celebrating their birthday in December  Month"
