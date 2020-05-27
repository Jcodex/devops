#!/bin/bash
sudo git add .
sudo git commit -m "new version"
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops" --tags
sudo git checkout "master"
sudo git merge task5
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops" --tags
value=$(<gradle.properties)
version="${value/version = /v}"
sudo git tag -a "$version" -m "version update"
sudo chown jenkins gradle.properties
