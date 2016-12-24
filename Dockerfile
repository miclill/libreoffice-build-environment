FROM debian:stretch

MAINTAINER Muhammet Kara <muhammetk@gmail.com>

# Add source list for apt (needed for build-dep)
ADD sources.list /etc/apt/sources.list
# Update software repos
RUN apt-get update
# Ugrade software
RUN apt-get -y install apt-utils \
&& apt-get -y upgrade

# Install essential packages and build tools
RUN apt-get -y install build-essential git libkrb5-dev graphviz wget vim

# Install LibreOffice dependencies
RUN apt-get -y build-dep libreoffice

# Purge apt-get cache
RUN rm -rf /var/lib/apt/lists/*
