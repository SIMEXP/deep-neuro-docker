# Deep-Neuro-Docker
Container for deep learning in neuroscience, working with jupyter notebook.
It is based from : https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/dockerfiles and includes the following:
- ubuntu:16.04
- tensorflow
- keras
- pandas
- jupyter
- matplotlib
- numpy
- nilearn

# Building
## Docker
Firt clone the repository
```
git clone git@github.com:SIMEXP/deeplearning-docker.git
```
Or simply download the Dockerfile.

`cd` to the path where you have the docker file.

You can now build the docker container
```
sudo docker build --tag=deep-neuro-docker .

```
If you want to change the tensorflow release, please use `TAG`. For example if you want to enable nvidia gpu support :
```
docker build --build-arg TAG=-gpu 

```
## Singularity

