################## BASE IMAGE ######################
FROM biocontainers/biocontainers:v1.2.0_cv2

################## METADATA ######################
LABEL base_image="biocontainers:v1.2.0_cv2"
LABEL version="1.0"
LABEL software="diyabc RF"
LABEL software.version="1.0"
LABEL about.summary="Approximate Bayesian Computation with Randomn Forest"
LABEL about.home="https://github.com/diyabc/diyabc"
LABEL about.documentation="https://github.com/diyabc/diyabc"
LABEL about.license_file="https://github.com/diyabc/diyabc"
LABEL about.license=""
LABEL extra.identifiers.biotools="diyabc"
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
  ca-certificates \
  libomp-dev \
  gcc-multilib \
  cmake \
  libssl-dev \
  libgmp-dev \
  libmpfr-dev \
  libgsl-dev \
  libgsl0-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app/

RUN cd /app && \
	git clone --recurse-submodules https://github.com/diyabc/diyabc.git && \
	cd diyabc && \
	mkdir build && \
	cd build && \
	cmake ../ && \
	cmake --build . --config Release

USER biodocker

