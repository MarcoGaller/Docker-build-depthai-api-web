FROM ubuntu:20.04

USER root

ENV TZ="America/New_York"
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
COPY requirements.txt /build/
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install python3 git python3-pip libopencv-dev libusb-1.0-0-dev doxygen graphviz clang-11 clang texlive-latex-base texlive-binaries  -y \
    && apt-get clean 
RUN apt-get install clang-format -y
RUN python3 -m pip install -U pip \ 
    && python3 -m pip install -r /build/requirements.txt


RUN useradd -ms /bin/bash ubuntu
USER ubuntu

WORKDIR /build

