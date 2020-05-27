#!/bin/bash
sudo git add .
sudo git commit -m "new version"
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops"
sudo git checkout "master"
sudo git merge task5
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops"
value=$(<gradle.properties)
oldversion=$(<oldversion.txt)
version="${value/version = /v}"
sudo git tag -a "$version" -m "version update"
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops" "v$version" 
version="${value//version = }"
sudo chown jenkins gradle.properties
sudo sed -i "s/$oldversion/$version/g" rolebook.yml
sudo sed -i "s/$oldversion/$version/g" oldversion.txt
