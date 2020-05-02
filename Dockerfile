FROM python:3.6-slim-stretch
MAINTAINER Victor Fu <supergothere@gmail.com>

RUN apt-get update
RUN apt-get install --yes software-properties-common
RUN apt-add-repository contrib
RUN apt-get update

RUN apt-get install --yes \
    python \
    python-dev \
    python-pip \
    build-essential \
    git \
    bash \
    strace \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/* \
  && apt-get clean
