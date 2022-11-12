################## BASE IMAGE ######################
FROM debian:stretch

################## METADATA ######################
LABEL base_image="debian:stretch"
LABEL version="1.0"
LABEL software="structure"
LABEL software.version="2.3.4"
LABEL about.summary="The program structure is a free software package for using multi-locus genotype data to investigate population structure."
LABEL about.home="https://web.stanford.edu/group/pritchardlab/structure.html"
LABEL about.documentation="https://web.stanford.edu/group/pritchardlab/structure_software/release_versions/v2.3.4/structure_doc.pdf"
LABEL about.license_file=""
LABEL about.license=""
LABEL extra.identifiers.biotools="structure"
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

ADD structure_linux_console.tar.gz /

#RUN apt update && apt upgrade -y && \
    #apt install wget -y && \
    #cd /data && \
    #wget https://web.stanford.edu/group/pritchardlab/structure_software/release_versions/v2.3.4/release/structure_linux_console.tar.gz && \
    #tar xzvf structure_linux_console.tar.gz && \
RUN cp console/structure /data && \
    rm -r console

# Change user
USER biodocker
#ENV PATH /home/biodocker/bin:$PATH

ENV PATH=$PATH:/home/biodocker/bin
ENV HOME=/home/biodocker

RUN mkdir /home/biodocker/bin

WORKDIR /data/
