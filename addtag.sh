sudo git add .
sudo git commit -m "new version"
git push "https://Jcodex:MishaMisha1!@github.com/Jcodex/devops"
sudo git checkout "master"
value=$(<gradle.properties)
version="${value/version = /v}"
echo "$version"
