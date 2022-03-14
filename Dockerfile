FROM ubuntu:20.04

USER root

ENV TZ="America/New_York"
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
COPY requirements.txt /build/
RUN sed -i "s/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g" /etc/apt/sources.list \
    && apt update \
    && apt upgrade -y \
    && apt install python3 git python3-pip libopencv-dev libusb-1.0-0-dev doxygen graphviz clang-11 clang texlive-latex-base texlive-binaries -y \
    && apt install npm -y \
    && apt clean 
RUN apt install curl -y \
    && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs
RUN npm install netlify-cli -g
    
COPY config.json .config/netlify/
RUN python3 -m pip install -U pip -i https://pypi.tuna.tsinghua.edu.cn/simple \ 
    && python3 -m pip install -r /build/requirements.txt

WORKDIR /build

