FROM arm64v8/centos:8.1.1911 AS main

LABEL maintainer="Greg Pearson<greg.pearson@starlab.io>"

RUN yum update -y && yum install -y \
    # Install basic development tools
    yum install make git
    yum group install "Development Tools"
    # Install check testing subsystem files
    yum install check check-devel
    # Cleanup
    yum clean all && \
    rm -rf /var/cache/yum/* /tmp/* /var/tmp/*
