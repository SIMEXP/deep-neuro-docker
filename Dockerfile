ARG TAG

FROM tensorflow/tensorflow:latest${TAG}-py3

LABEL maintainer="Loic Tetrel <loic.tetrel.pro@gmail.com>"

RUN echo 'unset XDG_RUNTIME_DIR' >> /etc/bash.bashrc

RUN pip3 install tables \
    nilearn
