FROM ubuntu:20.04

USER root

ENV TZ="America/New_York"
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
COPY requirements.txt /build/
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install python3 git python3-pip libopencv-dev libusb-1.0-0-dev doxygen graphviz clang-11 clang texlive-latex-base texlive-binaries clang-format -y \
    && apt-get clean 

RUN python3 -m pip install -U pip \ 
    && python3 -m pip install -r /build/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

RUN useradd -ms /bin/bash ubuntu
USER ubuntu

WORKDIR /build

