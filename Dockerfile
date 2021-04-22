FROM ubuntu:20.04
MAINTAINER Theo@keennews.nl

# Update Ubuntu Software repository
RUN apt-get update

# Install qemu from ubuntu repository
RUN apt-get install qemu-guest-agent -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
    
    
CMD /sbin/qemu-ga -p /dev/vport1p1
