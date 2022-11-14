################## BASE IMAGE ######################
FROM biocontainers/biocontainers:v1.2.0_cv2

################## METADATA ######################
LABEL base_image="biocontainers:v1.2.0_cv2"
LABEL version="1.0"
LABEL software="ldhot"
LABEL software.version=""
LABEL about.summary="Detect recombination hotspots using population genetic data."
LABEL about.home="https://github.com/auton1/LDhot"
LABEL about.documentation="https://github.com/auton1/LDhot"
LABEL about.license_file="https://github.com/auton1/LDhot"
LABEL about.license=" LGPL-3.0 license "
LABEL extra.identifiers.biotools="ldhot"
LABEL about.tags="Population Genomics"

################## MAINTAINER ######################
MAINTAINER Thomas Brazier <brazier.thomas@gmail.com>

################## INSTALLATION ######################

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install -y --no-install-recommends \
  git \
  gcc-10 \
  g++-10 \
  make \
  ca-certificates \
  libssl-dev \
  libgmp-dev \
  libmpfr-dev \
  libgsl-dev 

RUN cd /home/biodocker/bin && \
    git clone https://github.com/auton1/LDhot.git LDhot && \
    cd LDhot && \
    make MULTI=1 CC=gcc-10 CPP=g++-10 CXX=g++-10 LD=g++-10

RUN apt remove -y \
  git \
  g++ \
  make \
  ca-certificates \
  libssl-dev \
  libgmp-dev \
  libmpfr-dev \
  libgsl-dev \
  && rm -rf /var/lib/apt/lists/*

USER biodocker

ENV PATH /home/biodocker/bin:/home/biodocker/bin/LDhot:$PATH

WORKDIR /data/
