FROM jupyter/datascience-notebook
RUN conda install -c conda-forge lightgbm && \
    conda clean --all --yes

USER root
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y fonts-ipaexfont && \
    rm -rf /var/lib/apt/lists/*
USER jovyan
