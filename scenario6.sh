#!/bin/bash
i=0b=0
while [ $i -le 2 ]
do
read A
result= $A
a=`echo $?`
echo $a
if [ $a -eq $b ]; then
echo "Command is Valid"
else
echo "Command is Invalid"
fi
((i++))
done
