#!/bin/bash
sudo git add .
sudo git commit -m "new version"
sudo git push "https://Jcodex:"
sudo git checkout "master"
sudo git merge task6 --no-ff --no-edit
sudo git add .
sudo git commit -m "merge master and task6"
sudo git merge task6 --no-ff --no-edit
sudo git push "https://Jcodex:
value=$(<gradle.properties)
version="${value/version = /v}"
sudo git tag -a "$version" -m "version update"
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops" "$version" 
sudo chown jenkins gradle.properties
