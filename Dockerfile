FROM arm64v8/centos:8.1.1911

COPY qemu-aarch64-static /usr/bin/qemu-aarch64-static

LABEL maintainer="Greg Pearson<greg.pearson@starlab.io>"

RUN yum update -y && \
    yum install -y make git check check-devel && \
    yum group install -y "Development Tools" && \
    yum clean all && \
    rm -rf /var/cache/yum/* /tmp/* /var/tmp/*

RUN uname -a
RUN rpm -qa
