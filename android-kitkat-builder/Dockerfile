FROM builder-base

MAINTAINER mewlips <mewlips@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install bison g++-multilib git gperf libxml2-utils \
               sudo vim gcc-4.7-arm-linux-gnueabihf \
               make python flex lib32z1 zip bc lzop
RUN (cd /usr/bin; for f in *4.7; do ln -s $f ${f%-4.7}; done)

# Install Oracle JDK 6
#RUN apt-get -y install python-software-properties
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get -y install oracle-java6-installer
