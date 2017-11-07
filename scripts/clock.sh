#!/bin/bash

while :
do

git checkout master
echo -en '\n' >> file.txt

git add -A
git commit -m "update"
git push origin master

git checkout IM-1088
git merge master
git push origin IM-1088

git checkout IM-1089
git merge master
git push origin IM-1089 

git checkout IM-1093 
git merge master
git push origin IM-1093 

git checkout IM-1094 
git merge master
git push origin IM-1094 

git checkout master

echo =====================
sleep 480
done
