# Dockerfile grantmacken/alpine-base
# https://github.com/grantmacken/alpine-base
FROM alpine:3.7 as base
LABEL maintainer="Grant Mackenzie <grantmacken@gmail.com>"
WORKDIR /home
# build-base like build-essentials
# contains make
# the install build dependencies are the remove
RUN apk add --no-cache --virtual .build-deps \
  build-base \
  linux-headers \
  bash \
  cmake \
  grep \
  wget \
  curl \
  tar \
  perl-dev \
  perl-utils \
  gd-dev \
  readline-dev \
  expect \
  && apk del .build-deps

ENV LANG C.UTF-8
STOPSIGNAL SIGTERM
ENTRYPOINT ["bin/ash"]

