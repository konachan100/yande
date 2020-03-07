#!/bin/bash
while true
do
    bash update.sh >> log.txt
    python3 trimlog.py
    sleep 300s
done

