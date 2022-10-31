FROM rocker/binder:4.1.3

ARG NB_USER
ARG NB_UID

COPY --chown=${NB_USER}:${NB_USER} . ${HOME}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

USER root
RUN python3 -m pip install --no-cache-dir -r requirements.txt \
     && rm -rf /tmp/* /var/tmp/* \
     && find /usr/local/lib -follow -type f -name '*.pyc' -delete \
     && find /usr/local/lib -follow -type f -name '*.js.map' -delete
    RUN apt-get update && apt-get -y install graphviz && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
USER ${NB_USER}