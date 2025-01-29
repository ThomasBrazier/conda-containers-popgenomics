################## BASE IMAGE ######################
FROM biocontainers/biocontainers:v1.2.0_cv2

################## METADATA ######################
LABEL base_image="biocontainers:v1.2.0_cv2"
LABEL version="1.0"
LABEL software="ldhat"
LABEL software.version="2.2a"
LABEL about.summary="Estimate recombination rates from population genetic data"
LABEL about.home="https://github.com/auton1/LDhat"
LABEL about.documentation="https://github.com/auton1/LDhat"
LABEL about.license_file="https://github.com/auton1/LDhat"
LABEL about.license=""
LABEL extra.identifiers.biotools="ldhat"
LABEL about.tags="Population Genomics"

################## MAINTAINER ######################
MAINTAINER Thomas Brazier <brazier.thomas@gmail.com>

################## INSTALLATION ######################

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install -y --no-install-recommends \
  git \
  g++ \
  make \
  ca-certificates \
  libssl-dev \
  libgmp-dev \
  libmpfr-dev \
  libgsl-dev 

RUN cd /home/biodocker/bin && \
    git clone https://github.com/auton1/LDhat.git LDhat && \
    cd LDhat && make && make clean && cd ..

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

ENV PATH /home/biodocker/bin:/home/biodocker/bin/LDhat:$PATH

WORKDIR /data/
