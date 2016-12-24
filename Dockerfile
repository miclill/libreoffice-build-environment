FROM debian:latest

MAINTAINER Muhammet Kara <muhammetk@gmail.com>

# update software repos
RUN apt-get update
# ugrade software
RUN apt-get -y upgrade

# Install essential build tools and dependencies
RUN apt-get install -y apt-utils \
&& apt-get install -y build-essential git libkrb5-dev

# Purge apt-get cache
RUN rm -rf /var/lib/apt/lists/*
