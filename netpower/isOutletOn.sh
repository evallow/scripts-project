#!/bin/bash

# toggles the outlet 

if [ "$#" -ne 1 ]; then 
   echo -n "Usage: "; echo -n $0; echo " [1-5]"
   exit -1
fi

if [ $1 -lt 1 ]; then
   echo "Bit selection out of range, please run with 1-5"
   exit -1
fi

if [ $1 -gt 5 ]; then
   echo "Bit selection out of range, please run with 1-5"
   exit -1
fi

# get current status of all outlets
wget --user admin --password admin http://10.6.1.40/cmd.cgi?\$A5 -O ./outtmp  -q

# set 'bit' to the value of the specified 
bit=`cat outtmp | cut -c$1-$1`

# if bit is off, turn it on
if [ $bit -ne 0 ]; then
   echo "bit set to 1"
   exit 1
else
   echo "bit set to 0"
   exit 0
fi
