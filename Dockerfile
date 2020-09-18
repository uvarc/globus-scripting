FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y locales locales-all python3 python3-pip
RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir globus-cli
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

COPY sync.sh /sync.sh
COPY sync-hardcoded.sh /sync-hardcoded.sh
