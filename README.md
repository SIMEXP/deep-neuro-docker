# Deep-Neuro-Docker
Container for deep learning in neuroscience, working with jupyter notebook.
It is based from the official [tensorflow build](https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/dockerfiles) and includes the following:
- jupyter
- keras
- matplotlib
- nilearn
- numpy
- pandas
- scikit-learn 
- scipy
- sklearn
- tensorflow
- ubuntu:16.04

## Building

Firt clone the repository where you want:
```
git clone git@github.com:SIMEXP/deeplearning-docker.git
```
Or simply download the Dockerfile.

`cd` to the path where you have the docker file.

You can now build the container as you want

#### With `BUILD` file

Execute `./BUILD`, this will create a singularity image from the docker file and put it in `/data/cisl/CONTAINERS`.

#### Manually

###### Docker
```
sudo docker build --tag=deep-neuro-docker .
```
If you want to change the tensorflow release, please use `TAG`.
For example if you want to enable nvidia gpu support:
```
docker build--build-arg TAG=-gpu --tag=deep-neuro-docker-gpu .
```
All tags are available [here](https://hub.docker.com/r/tensorflow/tensorflow).
###### Singularity

First install [Docker2Singularity](https://github.com/singularityware/docker2singularity).

Create a directory where you want the `.simg` to be saved:
```
mkdir <save_path>
```

Convert the docker image:
```
sudo docker run -v /var/run/docker.sock:/var/run/docker.sock \
-v <save_path>:/output \
--privileged -t --rm \
singularityware/docker2singularity \
--name deep-neuro-docker deep-neuro-docker
```
The singularity image will be in `<save_path>`.

## Usage

To run the docker container and test the notebook from tensorflow
```
sudo docker run -p 8888:8888 -it deep-neuro-docker
```
You can then open a web browser and see look at the notebooks !

If you want to play with your own notebooks, 
```
sudo docker run -p 8888:8888 -v ${PWD}:/notebooks -it deep-neuro-docker
```

*Docker image should be available on Dockerhub soon*
