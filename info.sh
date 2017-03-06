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

#Space-------------------------------------------------------------------|
echo " "

#Bourne shell uses 'expr' for Arithmatic
#so just use 'expr' when doing add,sub,mul,div,etc.
x=1
expr $x + 1
expr $x \> 1
#1=true; 0=false

#matching or equal(returns amount matched)<----------------------
expr "swimming" : 'sw.*ing'
#or
expr match "swimming" 'sw.*ing'

#Space-------------------------------------------------------------------|
echo " "

#for-loop<----------------------------------------------------------
for i in {5..1..1}
do
  echo Countdown: $i
done

echo " "

#for-loop (familiar)<----------------------
for ((j=1; j<=5; j++))
do
  echo Upcounter: $j
done


echo " "

#if false then ...... fi' statement skips the code "...."
if false
then
#infinite loop<----------------------
for ((; ;))
do
  echo This is an infinite loop [CTRL+C to stop]
done
fi
echo Infinite loop did not run

echo

#special if case
if false
then
test=$@
for values in $test
do
  echo test: $valeus
done
fi



#Space-------------------------------------------------------------------|
echo " "

#while loop(binary operators -lt -le -gt -ge -eq)<----------------------
a=0
while [ $a -le 10 ]
do
  echo $a
  ((a++))
done

#Space-------------------------------------------------------------------|
echo " "

#bash command for arithmatic (())
x=2
((x=x+1))
echo $x

#Space-------------------------------------------------------------------|
echo " "

#Check if file exists (0=true; 1=false)
test -e ~/"UNIX Info"/"info.sh"
echo $?

echo

#Check (binary operators -lt -le -gt -ge -eq)<--------------
test 1 -eq 1
echo $?

#Space-------------------------------------------------------------------|
echo " "

#if else statement (checks if file exists if working directory))<--------------
echo "enter a word:"
read v1
if [ -e $vi ]
then
  echo "A file by that name exists"
else
  echo "No file by that name exists"
fi

#Space-------------------------------------------------------------------|
echo " "

#case/switch<--------------
echo "type the word for 1 or 2"
read v1
case $v1 in
  [Oo]ne)
    echo "you entered 1"
    ;;
  [Tt]wo)
    echo "you entered 2"
    ;;
  *)
    echo "You either misspelled the word or entered a different number"
esac

#Space-------------------------------------------------------------------|
echo " "
