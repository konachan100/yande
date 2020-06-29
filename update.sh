#!/bin/bash
echo
echo
echo ================================================================================
echo $(date +%F%n%T)
git pull
if [ ! -d "src" ]; then 
    git clone -b yande git@github.com:konachan100/konachan100-src.git src
fi
cd src
bash gen.sh
cd ..
git diff --stat
git add .
git commit -m "update content"
git push
