FROM centos:7

MAINTAINER dev [at] expatfinder [dot] com

ENV NODE_VERSION=10.15.3 \
    NPM_VERSION=6.4.1 \
    IONIC_VERSION=1.3.1\
    CORDOVA_VERSION=6.0.0 \
    YARN_VERSION=1.16.0 \

# Install basics
RUN apt-get update &&  \
    apt-get install -y git wget curl unzip ruby build-essential xvfb && \
    yum install -y gcc-c++ make  && \
    curl -sL https://rpm.nodesource.com/setup_10.x | -E bash -  && \
    yum install nodejs
    npm install -g ionic@"$IONIC_VERSION" yarn@"$YARN_VERSION" && \
    npm cache clear && \
    mkdir Sources && \
    mkdir -p /root/.cache/yarn/ && \
