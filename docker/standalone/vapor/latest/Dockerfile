################## BASE IMAGE ######################
FROM biocontainers/biocontainers:v1.2.0_cv2

################## METADATA ######################
LABEL base_image="biocontainers:v1.2.0_cv2"
LABEL version="1.0"
LABEL software="vapor"
LABEL software.version="latest"
LABEL about.summary="VaPoR is a structural variants (SVs) validator based on long read sequencing"
LABEL about.home="https://github.com/mills-lab/vapor"
LABEL about.documentation="https://github.com/mills-lab/vapor"
LABEL about.license_file="https://github.com/mills-lab/vapor"
LABEL about.license=""
LABEL extra.identifiers.biotools="vapor"
LABEL about.tags="Population Genomics"

################## MAINTAINER ######################
MAINTAINER Thomas Brazier <brazier.thomas@gmail.com>

################## INSTALLATION ######################

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install -y \
  git \
  g++ \
  make \
  build-essential python3-dev \
  python3-pip \
  samtools \
  ca-certificates \
  libssl-dev \
  libgmp-dev \
  libmpfr-dev \
  libgsl-dev \
  r-base

USER biodocker

RUN pip3 install Cython numpy scipy matplotlib scikit-learn rpy2

RUN git clone https://github.com/ThomasBrazier/vapor.git && \
  cd vapor && \
  python3 setup.py install --user && \
  export PATH=$PATH:$HOME/.local/bin

USER root

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

ENV PATH /home/biodocker/bin:$PATH

WORKDIR /data/
