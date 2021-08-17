# https://www.linuxuprising.com/2019/06/new-oracle-java-11-installer-for-ubuntu.html
FROM ubuntu:20.04

ENV JAVA_VERSION=11.0.12

ADD https://dl.dropboxusercontent.com/s/73dhx8ut232l8zx/jdk-${JAVA_VERSION}_linux-x64_bin.tar.gz?dl=0 /var/cache/oracle-jdk11-installer-local/jdk-${JAVA_VERSION}_linux-x64_bin.tar.gz

RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:linuxuprising/java && \
    apt update && \
    yes | apt install oracle-java11-installer-local -y && \
    apt install oracle-java11-set-default-local && \
    apt clean