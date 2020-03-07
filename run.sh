#!/bin/bash
while true
do
    bash update.sh
    python3 trimlog.py
    sleep 300s
done

