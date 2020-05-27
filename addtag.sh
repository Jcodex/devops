#!/bin/bash
sudo perl -i -pe 's/\d+\.\d+\.\K(\d+)/ $1+1 /e' nextversion.txt
sudo git add .
sudo git commit -m "new version"
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops"
sudo git checkout "master"
sudo git merge task5 --no-ff --no-edit
sudo git add .
sudo git commit -m "merge master and task5"
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops"
value=$(<gradle.properties)
version="${value/version = /v}"
sudo git tag -a "$version" -m "version update"
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops" "$version" 
#sudo chown jenkins gradle.properties
