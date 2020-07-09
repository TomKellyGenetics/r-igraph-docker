#FROM ubuntu:bionic
FROM rocker/verse:latest

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
 git \
 git-lfs \
 make \
 gzip \
 rename

RUN Rscript -e 'install.packages(c("mvtnorm", "matrixcalc", "igraph", "gplots", "Matrix"))'
