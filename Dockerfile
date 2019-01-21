ARG TAG

FROM tensorflow/tensorflow:latest${TAG}-py3

LABEL maintainer="Loic Tetrel <loic.tetrel.pro@gmail.com>"

RUN ${PIP} install tables \
    nilearn
    
RUN mkdir /run/user
