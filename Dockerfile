FROM continuumio/miniconda3:4.6.14

LABEL "repository"="https://github.com/m0nhawk/conda-package-publish-action"
LABEL "maintainer"="Andrew Prokhorenkov <andrew.prokhorenkov@gmail.com>"

RUN conda install anaconda-client conda-build

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
