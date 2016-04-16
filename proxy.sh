#!/bin/bash
echo > can.txt
cat result2 | while read line
do
(
curl -x $line -o /dev/null -s -w "$line\t%{http_code}\n" --connect-time 10 -m 10 www.baidu.com >> can.txt
)&
done
wait
