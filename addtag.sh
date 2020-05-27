#!/bin/bash
sudo git add .
sudo git commit -m "new version"
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops"
sudo git checkout "master"
sudo git merge task5
sudo git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops"
value=$(<gradle.properties)
version="${value/version = /v}"
sudo git tag -a "$version"
