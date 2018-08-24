# Dockerfile grantmacken/alpine-base
# https://github.com/grantmacken/alpine-base
FROM alpine:3.8 as maker
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
  expect \
  openjdk8-jre-base

ENV LANG C.UTF-8
ENV JAVA_HOME /usr/lib/jvm/default-jvm
WORKDIR /home

# FROM maker as jre
# ENV JAVA_VERSION 8u171
# ENV JAVA_ALPINE_VERSION 8.171.11-r0
# ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
# ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# RUN  apk add --no-cache \
 
