################## BASE IMAGE ######################
FROM debian:stretch

################## METADATA ######################
LABEL base_image="debian:stretch"
LABEL version="1.0"
LABEL software="distruct"
LABEL software.version="1.1"
LABEL about.summary="distruct is a program that can be used to graphically display results produced by the genetic clustering program structure or by other similar programs."
LABEL about.home="https://web.stanford.edu/group/rosenberglab/distruct.html"
LABEL about.documentation="https://web.stanford.edu/group/rosenberglab/distruct.html"
LABEL about.license_file=""
LABEL about.license=""
LABEL extra.identifiers.biotools="distruct"
LABEL about.tags="Population genetics"

################## MAINTAINER ######################
MAINTAINER Thomas Brazier <brazier.thomas@gmail.com>

################## INSTALLATION ######################

ENV DEBIAN_FRONTEND noninteractive
RUN mkdir /data /config

RUN apt-get clean all && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add user biodocker with password biodocker
RUN groupadd fuse && \
    useradd --create-home --shell /bin/bash --user-group --uid 1000 --groups sudo,fuse biodocker && \
    echo `echo "biodocker\nbiodocker\n" | passwd biodocker` && \
    chown biodocker:biodocker /data && \
    chown biodocker:biodocker /config

ADD distruct1.1.tar.gz /

RUN cp distruct1.1/distructLinux1.1 /data/distruct && \
    cp -r distruct1.1/ColorBrewer /data/ && \
    rm -r distruct1.1

# Change user
USER biodocker

ENV PATH=$PATH:/home/biodocker/bin
ENV HOME=/home/biodocker

RUN mkdir /home/biodocker/bin

WORKDIR /data/
