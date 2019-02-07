ARG TAG

FROM tensorflow/tensorflow:latest${TAG}-py3-jupyter

LABEL maintainer="Loic Tetrel <loic.tetrel.pro@gmail.com>"

ENV XDG_RUNTIME_DIR=""

RUN pip3 install tables \
    nilearn
