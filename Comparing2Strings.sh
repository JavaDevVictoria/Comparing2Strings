#!/bin/bash

# A script that takes 2 strings as an argument, then performs 3 separate operations on them

# Check to see if the user passed exactly 2 strings.

if [ "$#" -lt 2 ] || [ "$#" -gt 2 ] ; then
   echo "Usage: Please pass 2 strings as an argument."
   exit 1
fi

parameter1=$1
parameter2=$2
LenOfString1=${#parameter1}
LenOfString2=${#parameter2}

# Tests whether the strings are zero/nonzero length

echo "Is string 1 zero length? Value of 1 means FALSE"
test -z $parameter1
echo $?
echo "Is string 2 nonzero length? Value of 0 means TRUE;"
test -n $parameter2
echo $? 

# Compares the length of the two strings

if [ $LenOfString1 -gt $LenOfString2 ] ; then
   echo "The first string, $parameter1, is longer than the second string, $parameter2"
elif [ $LenOfString2 -gt $LenOfString1 ] ; then
   echo "The second string, $parameter2, is longer than the first string, $parameter1"
else
   echo "Both strings are of equal length."
fi

# Compares whether the strings are the same or not

if [ $parameter1 == $parameter2 ] ; then
   echo "The first string, $parameter1, is the same as the second string, $parameter2"
else
   echo "The first string, $parameter1, is not the same as the second string, $parameter2"
fi

   
exit 0
