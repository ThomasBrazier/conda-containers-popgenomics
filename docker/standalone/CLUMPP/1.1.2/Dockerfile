################## BASE IMAGE ######################
FROM biocontainers/biocontainers:v1.2.0_cv2

################## METADATA ######################
LABEL base_image="biocontainers:v1.2.0_cv2"
LABEL version="1.0"
LABEL software="clumpp"
LABEL software.version="1.1.2"
LABEL about.summary="CLUMPP is a program that deals with label switching and multimodality problems in population-genetic cluster analyses."
LABEL about.home="https://web.stanford.edu/group/rosenberglab/clumpp.html"
LABEL about.documentation="https://web.stanford.edu/group/rosenberglab/clumpp.html"
LABEL about.license_file="https://web.stanford.edu/group/rosenberglab/clumpp.html"
LABEL about.license=""
LABEL extra.identifiers.biotools="clumpp"
LABEL about.tags="Population Genomics"

################## MAINTAINER ######################
MAINTAINER Thomas Brazier <brazier.thomas@gmail.com>

################## INSTALLATION ######################

USER root

ENV DEBIAN_FRONTEND=noninteractive

ADD CLUMPP_Linux64.1.1.2.tar.gz /home/biodocker/bin

USER biodocker

ENV PATH /home/biodocker/bin:/home/biodocker/bin/CLUMPP_Linux64.1.1.2:$PATH

WORKDIR /data/
