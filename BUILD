git pull

sudo docker build --tag=deep-neuro-docker .

sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/output --privileged -t --rm singularityware/docker2singularity --name deep-neuro-docker deep-neuro-docker

rsync -rlt --info=progress2 deep-neuro-docker.simg stark:/data/cisl/CONTAINERS
