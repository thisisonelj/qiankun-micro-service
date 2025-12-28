#!/bin/bash

rm -rf ./dist

mkdir ./dist
mkdir ./dist/subapp

# clue子应用
cp -r ./clue/dist/ ./dist/subapp/clue/

# order子应用
cp -r ./order/dist/ ./dist/subapp/order/

# main基座
cp -r ./main/dist/ ./dist/main/

# cd ./dist
# zip -r mp$(date +%Y%m%d%H%M%S).zip *
# cd ..
echo 'bundle.sh execute success.'
