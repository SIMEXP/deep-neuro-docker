ARG TAG

FROM tensorflow/tensorflow:2.0.0${TAG}-py3-jupyter

LABEL maintainer="Loic Tetrel <loic.tetrel.pro@gmail.com>"

ENV XDG_RUNTIME_DIR=""

RUN apt-get update && apt-get install -y \
    wget \
    git \
    htop \
    graphviz

RUN pip3 install tables \
    pybids \
    SimpleITK \
    scikit-learn \
    scipy \
    nilearn \
    numpy \
    lmdb \
    pandas \
    tensorpack
