FROM rocker/binder:4.2.1

COPY --chown=${NB_USER}:${NB_USER} . ${HOME}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi"

USER root
RUN python3 -m pip install -r requirements.txt
RUN apt-get update && apt-get -y install graphviz
USER ${NB_USER}