ARG TAG

FROM tensorflow/tensorflow:1.13.0rc2${TAG}-py3-jupyter

LABEL maintainer="Loic Tetrel <loic.tetrel.pro@gmail.com>"

ENV XDG_RUNTIME_DIR=""

RUN apt-get update && apt-get install -y \
    wget

RUN pip3 install tables \
    lucid \
    scipy \
    nilearn
