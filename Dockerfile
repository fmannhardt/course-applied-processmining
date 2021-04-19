## Use a tag instead of "latest" for reproducibility
FROM rocker/binder:4.0.3

ENV DISABLE_AUTH=true

USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi