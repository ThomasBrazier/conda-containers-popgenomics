################## BASE IMAGE ######################
FROM biocontainers/biocontainers:v1.2.0_cv2

################## METADATA ######################
LABEL base_image="biocontainers:v1.2.0_cv2"
LABEL version="1.0"
LABEL software="ngsParalog"
LABEL software.version="1.3.3"
LABEL about.summary="ngsParalog is a program for detecting genomic regions that are problematic for short read mapping using population-level, next generation sequencing (NGS) data"
LABEL about.home="https://github.com/tplinderoth/ngsParalog"
LABEL about.documentation="https://github.com/tplinderoth/ngsParalog"
LABEL about.license_file="https://github.com/tplinderoth/ngsParalog"
LABEL about.license="GPL-3.0"
LABEL extra.identifiers.biotools="ngsParalog"
LABEL about.tags="Population Genomics"

################## MAINTAINER ######################
LABEL maintainer="Thomas Brazier <brazier.thomas@gmail.com>"

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
  libgsl-dev \
  conda-package-handling

RUN conda install -y -c conda-forge -c bioconda \
  htslib \
  samtools \
  numpy \
  python \
  htslib \
  samtools \
  r-truncnorm \
  r-docopt

RUN cd /home/biodocker/bin && \
  wget https://github.com/tplinderoth/ngsParalog/releases/download/v1.3.3/ngsparalog_1.3.3.tar.gz && \
  tar -xzvf ngsparalog_1.3.3.tar.gz


USER biodocker

ENV PATH=/home/biodocker/bin:/home/biodocker/bin/ngsparalog:$PATH

WORKDIR /data/
