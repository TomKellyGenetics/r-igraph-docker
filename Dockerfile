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

RUN  add-apt-repository -y ppa:ubuntu-toolchain-r/test \
  && apt-get update -y  --allow-unauthenticated \
  && apt-get install -y libxml2-dev libpoppler-cpp-dev libapparmor-dev \
     gfortran gcc-7 g++-7 libx11-dev libglu1-mesa-dev libfreetype6-dev \ 
     libxml2-dev libgmp-dev glpk-utils \
  && apt-get install r-cran-igraph r-cran-rglpk

RUN Rscript -e 'install.packages(c("mvtnorm", "matrixcalc", "igraph", "gplots", "Matrix"))'
