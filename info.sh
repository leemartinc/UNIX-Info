#!/bin/bash

#variables
x="Hello World"
echo $x

#Space-------------------------------------------------------------------|
echo " "

#input variables(space matters)
echo Enter 2 string strings, separated by space
read v1 v2
echo Enter a 3rd String
read v3
echo you said $v1
echo you said $v2
echo and the 3rd string is $v3

#Space-------------------------------------------------------------------|
echo " "

#make variable enviromental
export x

#------------------------------------------------------------------------|


#Bourne shell uses 'expr' for Arithmatic
#so just use 'expr' when doing add,sub,mul,div,etc.
#matching or equal
expr "swimming" : 'sw.*ing'

#Space-------------------------------------------------------------------|
echo " "

#for loop
for i in {5..1..1}
do
  echo Countdown: $i
done

#Space-------------------------------------------------------------------|
echo " "

#for loop (familiar)
for ((j=1; j<=5; j++))
do
  echo Upcounter: $j
done

#Space-------------------------------------------------------------------|
echo " "

#if false then ...... fi' statement skips the code "...."
if false
then
#infinite loop
for ((; ;))
do
  echo This is an infinite loop [CTRL+C to stop]
done
fi
echo Infinite loop did not run

#Space-------------------------------------------------------------------|
echo " "

#while loop(binary operators -lt -le -gt -ge)
a=0
while [ $a -le 10 ]
do
  echo $a
  ((a++))
done
