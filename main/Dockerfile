FROM ubuntu:20.04

USER root

ENV TZ="America/New_York"
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
COPY requirements.txt /build/
RUN apt update \
    && apt upgrade -y \
    && apt install python3 git python3-pip -y \
    && apt clean 

RUN python3 -m pip install -U pip \
    && python3 -m pip install sphinx sphinx-rtd-theme

RUN useradd -ms /bin/bash ubuntu
USER ubuntu


WORKDIR /build


