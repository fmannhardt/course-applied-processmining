FROM rocker/geospatial:4.0.5 AS binder

LABEL org.label-schema.license="GPL-2.0" \
      org.label-schema.vcs-url="https://github.com/rocker-org/rocker-versioned" \
      org.label-schema.vendor="Rocker Project" \
      maintainer="Carl Boettiger <cboettig@ropensci.org>"

ENV NB_USER=rstudio

COPY ./rocker /rocker_scripts

RUN /rocker_scripts/install_python.sh
RUN /rocker_scripts/install_binder.sh

CMD jupyter notebook --ip 0.0.0.0

USER ${NB_USER}

WORKDIR /home/${NB_USER}

## Use a tag instead of "latest" for reproducibility
FROM binder

COPY --chown=${NB_USER}:${NB_USER} . ${HOME}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

RUN R --quiet -e "IRkernel::installspec()"

RUN apt-get install graphviz