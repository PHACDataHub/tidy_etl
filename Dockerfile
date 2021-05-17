FROM rocker/r-ver:4.0.0
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libicu-dev \
    zlib1g-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    make \
    pandoc \
    libxml2-dev \
    git \
    libgit2-dev \
    && rm -rf /var/lib/apt/lists/*
RUN install2.r --error \
    tidyverse \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools \
    janitor \
    AzureStor \
    jsonlite
    
