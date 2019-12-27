#!/bin/bash
FILES=/home/sumyak/DA/*
for f in $FILES
do
  echo "Processing $f"
  echo -en '\n'  
  wc $f
  echo -en '\n'
  #ls -l $f
  stat -c "%U" $($f)
  cat -n $f
  echo -en '\n'
  echo -en '\n'
  echo -en '\n'
done

