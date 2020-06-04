#!/bin/bash
value=$(<gradle.properties)
version="${value//version = }"
sudo docker build --build-arg version="$version" . -t mycat"$version"
sudo docker tag mycat"$version" localhost:5000/mycat"$version"
sudo docker push localhost:5000/mycat"$version"
sudo docker service create --name tomcats -p 8084:8080 --replicas 3 localhost:5000/mycat"$version"
#sudo docker run -it -d -p 8082:8080 localhost:5000/mycat"$version"
