#!/bin/bash

#read -p "Enter project name : " projectName
# En ligne de commande directement
projectName=$1

mkdir ${projectName}

cp -r sources/. ${projectName}/

cd ${projectName}
git init

cat << EOF >> README.md
![screenshoot.jpg](screenshoot.jpg)

# ${projectName}
EOF

git add *
git commit -m 'Initial Commit'

git remote add origin git@github.com:jppayette/${projectName}.git
git push --force --set-upstream origin master
