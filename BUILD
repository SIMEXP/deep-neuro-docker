#!/bin/bash

echo "Removing previous container"
rm *.simg

echo "Building docker image..."
sudo docker build --build-arg TAG=$1 --tag=deepneuro-docker$1 .

echo "Converting to singularity..."
sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/output --privileged -t --rm singularityware/docker2singularity --name deepneuro-docker$1 deepneuro-docker$1

echo "Deleting none images"
docker rmi --force $(docker images | grep none | awk '{ print $3; }')

echo "Transferring image to stark..."
rsync -rlt --info=progress2 deepneuro-docker$1.simg stark.criugm.qc.ca:/data/cisl/CONTAINERS
echo "Transferring image to cedar..."
#rsync -rlt --info=progress2 deepneuroan$1.simg cedar.computecanada.ca:~/projects/rrg-pbellec/CONTAINERS
