#!/bin/bash
echo
echo
echo ================================================================================
echo $(date +%F%n%T)
git pull
if [ ! -d "src" ]; then 
    echo "clone core script"
    git clone git@github.com:konachan100/konachan100-src.git src
fi
cd src
echo "gen pages"
bash gen.sh
cd ..
echo "publish to gh"
git add --all .
git commit -m "update content"
git push
