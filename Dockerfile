FROM photon:latest
MAINTAINER shawnho hos@vmware.com

RUN tdnf update -y
RUN yum install -y vim iproute iputils wget motd
RUN yum -y clean all
RUN motdgen -o /etc/motd
ADD motd /etc/motd
RUN echo "cat /etc/motd" >> ~/.bashrc
CMD ["/bin/bash", "-l"]
