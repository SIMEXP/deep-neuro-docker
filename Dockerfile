ARG TAG

FROM tensorflow/tensorflow:1.13.0rc2${TAG}-py3-jupyter

LABEL maintainer="Loic Tetrel <loic.tetrel.pro@gmail.com>"

ENV XDG_RUNTIME_DIR=""

RUN apt-get update && apt-get install -y \
    wget\
    git

RUN pip3 install tables \
    sklearn \
    scipy \
    nilearn \
    lmdb \
    pandas \
    tensorpack
