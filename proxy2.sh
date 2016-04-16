#!/bin/bash
cat can.txt | grep 200 | cut -f1 | while read line
do
cat result |grep $line >> can3.txt
done
