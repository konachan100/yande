#!/bin/bash
# nohup ./run.sh > log.txt &
while true
do
    echo '' > log.txt
    bash update.sh
    python3 trimlog.py
    sleep 300s
done

