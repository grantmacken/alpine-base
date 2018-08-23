# Dockerfile grantmacken/alpine-base
# https://github.com/grantmacken/alpine-base
FROM alpine:3.8 as base
LABEL maintainer="Grant Mackenzie <grantmacken@gmail.com>"
# build-base like build-essentials
# contains make
# the install build dependencies are the remove
RUN apk add --no-cache \
  build-base \
  linux-headers \
  cmake \
  grep \
  wget \
  curl \
  tar \
  perl-dev \
  perl-utils \
  gd-dev \
  readline-dev \
  expect

ENV LANG C.UTF-8
WORKDIR /home

