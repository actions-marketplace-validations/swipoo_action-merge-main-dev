#!/bin/bash

set -e

echo "Starting the application..."

git --version

git clone "https://$1:$2@github.com/$3/$4.git"
echo "Cloned the repository"
cd $4
git config --global user.email "$5"
git config --global user.name "$6"
git config --global pull.ff only
git config core.autocrlf false
echo "Git configuration done"
git fetch
git checkout $7
git pull
echo "Pulled prod"
git checkout $8
git pull
echo "Pulled dev"
git merge $7
echo "Merged"
git commit --allow-empty -m "Merge $7 into $8"
echo "Committed"
git push
