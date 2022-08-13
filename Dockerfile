# Choose your desired base image
FROM jupyter/pyspark-notebook:latest


RUN mamba install --quiet --yes \
    'pyspark' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"