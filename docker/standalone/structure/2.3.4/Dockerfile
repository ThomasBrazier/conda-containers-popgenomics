################## BASE IMAGE ######################
FROM biocontainers/biocontainers:v1.0.0_cv4

################## METADATA ######################
LABEL base_image="biocontainers:v1.0.0_cv4"
LABEL version="3"
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

ADD structure_linux_console.tar.gz /tmp/

RUN cp /tmp/console/* /data/ && ls /data

USER biodocker

ENV PATH /home/biodocker/bin:$PATH

#WORKDIR /data/

RUN ls /data
