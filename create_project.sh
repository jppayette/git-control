#!/bin/bash

read -p "Enter project name : " projectName

mkdir ${projectName}
cd ${projectName}
git init

cat << EOF >> README.md
![screenshoot.jpg](screenshoot.jpg)

# ${projectName}
EOF

cat << EOF >> .gitignore 
vendor/
node_modules/
npm-debug.log

app/storage/

public/storage
public/hot
.env.*.php
.env.php
.env
EOF

cat << EOF >> LICENSE
MIT License

Copyright (c) 2019 Jean Patrick Payette

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

git add *
git commit -m 'Initial Commit'

git remote add origin git@github.com:jppayette/${projectName}.git
git push --force --set-upstream origin master
