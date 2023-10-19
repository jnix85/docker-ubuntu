FROM ubuntu:23.10

LABEL maintainer="jparks@jpconsulted.com"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean 
