###############################################################
# Dockerfile to build container images for Julia in Jupyter
# Based on ubuntu
###############################################################

FROM jupyter/scipy-notebook:notebook-6.4.12

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

ENV DEBIAN_FRONTEND=noninteractive

USER root

# Install Julia
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.3-linux-x86_64.tar.gz && \
    tar -xvzf julia-1.8.3-linux-x86_64.tar.gz && \
    rm -rf julia-1.8.3-linux-x86_64.tar.gz && \
    sudo cp -r julia-1.8.3 /opt/ && \
    sudo ln -s /opt/julia-1.8.3/bin/julia /usr/local/bin/julia

# Add Ijulia kernel
RUN julia -e 'using Pkg; Pkg.add("IJulia")'
