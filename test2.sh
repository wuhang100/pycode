#!/bin/bash
start=`date +%s`
python /home/wuhang/pytest/train2.py
wait
end=`date +%s`
echo "TIME:`expr $end - $start`"
