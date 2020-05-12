FROM arm64v8/centos:8

COPY qemu-aarch64-static /usr/bin/qemu-aarch64-static

LABEL maintainer="Greg Pearson<greg.pearson@starlab.io>"

RUN touch /var/lib/rpm/*

RUN yum clean all && \
    yum update -y && \
    yum install -y make git check check-devel python2 && \
    yum group install -y "Development Tools" && \
    yum clean all && \
    rm -rf /var/cache/yum/* /tmp/* /var/tmp/*
