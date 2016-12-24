#LibreOffice Build Environment

A simple docker container, which provides a build environment to build LibreOffice.

##What does it provide?

This docker container provides all the stuff I needed to build LibreOffice from its git source, but may also be used for other development needs.

Pull requests are wellcome!

##Installation
Pull the docker image from Docker Hub:
```bash
docker pull mkara/libreoffice-build-environment
```
Create and start a new container from the image:
```bash
docker run -it --name lodev --storage-opt size=30G mkara/libreoffice-build-environment
```
