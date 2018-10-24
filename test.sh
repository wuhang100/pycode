#!/bin/bash
python /home/wuhang/pytest/split.py
start=`date +%s`
scp /home/wuhang/traindata/inputdata11.npy Data1:/home/wuhang/traindata
scp /home/wuhang/traindata/outdata11.npy Data1:/home/wuhang/traindata
ssh -tt Data1 "/home/wuhang/anaconda2/bin/python /home/wuhang/pytest/train.py;exit" &
python /home/wuhang/pytest/train.py &
wait
end=`date +%s`
echo "TIME:`expr $end - $start`"
scp Data1:/home/wuhang/pytest/model11.h5 pytest
python /home/wuhang/pytest/getdata.py
