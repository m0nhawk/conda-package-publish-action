FROM continuumio/miniconda3:4.5.12

LABEL "com.github.actions.name"="Publish Anaconda Package"
LABEL "com.github.actions.description"="Package and publish Anaconda modules."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/m0nhawk/conda-package-publish-action"
LABEL "maintainer"="Andrew Prokhorenkov <andrew.prokhorenkov@gmail.com>"

RUN conda install anaconda-client conda-build

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
