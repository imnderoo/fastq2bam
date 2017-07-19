# Base Image
FROM biocontainers/biocontainers:latest

# Metadata
LABEL base.image="biocontainers:latest"
LABEL version="0.7.12"
LABEL software="bwa"
LABEL software.version="0.7.12"
LABEL description="Burrow-Wheeler Aligner for pairwise alignment between DNA sequences"
LABEL website="http://bio-bwa.sourceforge.net/"
LABEL documentation="http://bio-bwa.sourceforge.net/"
LABEL license="http://bio-bwa.sourceforge.net/"
LABEL tags="Genomics"

# Maintainer
MAINTAINER Saulo Alves Aflitos <sauloal@gmail.com>

RUN conda install bwa=0.7.12
RUN conda install samtools=1.3

USER root

COPY . /data/

RUN chmod a+x /data/fastq2bam.sh

ENTRYPOINT ["/data/fastq2bam.sh"]

