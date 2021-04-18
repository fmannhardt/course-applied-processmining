## Use a tag instead of "latest" for reproducibility
FROM rocker/binder:4.0.5

ENV RSESSION_PROXY_RSTUDIO_1_4=yes

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi