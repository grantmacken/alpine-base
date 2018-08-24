# Dockerfile grantmacken/alpine-base
# https://github.com/grantmacken/alpine-base
FROM alpine:3.8 as maker
LABEL maintainer="Grant Mackenzie <grantmacken@gmail.com>"
# build-base like build-essentials
# contains make
# the install build dependencies are the remove
RUN apk add --no-cache \
  bash \
  build-base \
  cmake \
  curl \
  expect \
  gd-dev \
  grep \
  linux-headers \
  openjdk8-jre-base \
  perl-dev \
  perl-utils \
  readline-dev \
  tar \
  wget

ENV LANG C.UTF-8
ENV JAVA_HOME /usr/lib/jvm/default-jvm
WORKDIR /home
