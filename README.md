# docker-arm64v8-centos

```
# Run this container on an x86_64 system by doing:
$ sudo apt-get install qemu binfmt-support qemu-user-static
$ docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
$ docker run --rm -t starlabio/docker-arm64v8-centos  uname -m
aarch64
```
