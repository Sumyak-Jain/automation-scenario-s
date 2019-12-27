#!/bin/bash
LIMIT='80'
dir_name='/var'
subject="Disk Usage of $dir_name in Ubuntu"
cd $dir_name
used=`df . | awk '{print $5}' | sed -ne 2p | cut -d"%" -f1`
if [ $used -gt $LIMIT ]
then
    echo "Greater than limit."
fi
