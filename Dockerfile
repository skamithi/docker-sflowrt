# set the base image to Ubuntu. For now supports up to 14.04
FROM ubuntu:14.04

# File Author/Maintainer
MAINTAINER Stanley Karunditu

# Update the repository sources list
RUN apt-get update

# Install wget and sflow-rt dependencies
RUN apt-get install -y wget openjdk-7-jre-headless

# Download latest Sflow-rt

RUN /usr/bin/wget -P /tmp http://www.inmon.com/products/sFlow-RT/sflow-rt_2.0-1072.deb

# Install sflow-rt
RUN /usr/bin/dpkg -i /tmp/sflow-rt_2.0-1072.deb

CMD /etc/init.d/sflow-rt start

EXPOSE 8008


