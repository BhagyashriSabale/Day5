#!/bin/bash

# generate 5 random 2-digit numbers and store them in an arrayA
for (( i=0; i<5; i++ ))
do
  num=$((RANDOM % 90 + 10))
  arr[$i]=$num
done

# iterate over the array and calculate the sum
sum=0
for i in "${arr[@]}"
do
  sum=$((sum + i))
done

# calculate the average
avg=$(($sum/ 5 | bc))

echo "Randomly generated numbers: ${arr[@]}"
echo "Sum: $sum"
echo "Average: $avg"
