FROM debian:latest

MAINTAINER Muhammet Kara <muhammetk@gmail.com>

# update software repos
RUN apt-get update
# ugrade software
RUN apt-get -y upgrade
# Install essential build tools and dependencies
RUN apt-get install -y apt-utils \
&& apt-get install -y build-essential git libkrb5-dev
#RUN dnf -y install gtk2-devel freetype-devel gstreamer-devel autoconf gperf libXaw-devel
#RUN dnf -y install GConf2-devel gnome-vfs2-devel cups-devel gstreamer1-plugins-base-devel
#RUN dnf -y install doxygen perl-Digest-MD5 libxslt-devel python3-devel patch zip gtk3-devel
#RUN dnf -y install dbus-glib-devel tar git bzip2 findutils gnome-vfs2-devel
# Make sure we have everything needed for LibreOffice
#RUN dnf -y builddep libreoffice
# Check gcc version
#CMD gcc --version

#Finished
CMD echo "Finished!"
