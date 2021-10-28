# Dockerfile

# Author       : Lhost
# Github       : https://github.com/lhost25
# Discord       : Evil#2909
# Email        : eviltoolslhost@gmail.com
# Date         : 25-08-2021
# Main Language: Python

# Download and import main images

# Operating system
FROM debian:10
# Main package
FROM python:3

# Author info
LABEL MAINTAINER="https://github.com/lhost25/eviltools"

# Working directory
WORKDIR eviltools/
# Add files 
ADD . /evil

# Installing other packages
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean

# Main command
CMD ["python3", "evil.py"]
