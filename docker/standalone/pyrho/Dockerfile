################## BASE IMAGE ######################
FROM biocontainers/biocontainers:v1.2.0_cv2

################## METADATA ######################
LABEL base_image="biocontainers:v1.2.0_cv2"
LABEL version="1.0"
LABEL software="pryho"
LABEL software.version="0.1.0"
LABEL about.summary="Estimate recombination rates from population genetic data"
LABEL about.home="https://github.com/popgenmethods/pyrho"
LABEL about.documentation="https://github.com/popgenmethods/pyrho"
LABEL about.license_file="https://github.com/popgenmethods/pyrho"
LABEL about.license=""
LABEL extra.identifiers.biotools="pyrho"
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
  ca-certificates \
  libssl-dev \
  libgmp-dev \
  libmpfr-dev \
  libgsl-dev \
  python3-dev \
  libgsl0-dev \
  python3-pip \
  cython3 \
  python3-numba \
  python3-cyvcf2 \
  python3-matplotlib \
  python3-pandas \
  python3-pysam \
  python3-scipy \
  python3-setuptools \
  python3-sklearn \
  python3-tqdm \
  && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install msprime

RUN git clone https://github.com/popgenmethods/ldpop.git ldpop \
  && pip install ldpop/

RUN git clone https://github.com/popgenmethods/pyrho.git pyrho \
  && pip install pyrho/

USER biodocker

WORKDIR /data/
