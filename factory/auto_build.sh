#!/bin/bash

echo "current path\t" .`pwd`

#git fetch --all
#git reset --hard origin/master

cd factory
python3 ad.py
python3 gfwlist.py
python3 build_confs.py
cd ..

git add .
git commit -m "Nightly build"
git push
