# project42/syslog-alpine

[![pipeline status](https://git.jordanclark.us/devops/syslog-alpine-docker/badges/master/pipeline.svg)](https://git.jordanclark.us/devops/syslog-alpine-docker/commits/master)

## Introduction
A docker image based on Alpine Linux with the S6 Overlay that redirects /dev/log to stdout & stderr for docker happiness!

### What is Alpine Linux?
Alpine Linux is an independent, non-commercial, general purpose Linux distribution designed for power users who appreciate security, simplicity and resource efficiency. Alpine Linux prides itself on being small, simple and secure.

### What is the s6-overlay?
The [s6-overlay project](https://github.com/just-containers/s6-overlay) is a series of init scripts and utilities to ease creating Docker images using s6 as a process supervisor.  The s6-overlay makes it easy to take advantages of s6 while still operate like other Docker images.  The s6 init system provides many helpful tools to initialize and manage processes as the Docker container starts.

### Tags

| Tag | Description |
|---|---|
| latest | The most current build.  Images based on latest may change often an possibly could break.  Test your images |
| 3.11 | Latest Alpine Linux 3.8 series |
| 3.10 | Latest Alpine Linux 3.8 series |
| 3.9 | Latest Alpine Linux 3.8 series |
| 3.8 | Latest Alpine Linux 3.8 series |
| 3.7 | Latest Alpine Linux 3.7 series |
| 3.6 | Latest Alpine Linux 3.6 series |
| 3.5 | Latest Alpine Linux 3.5 series |
| 3.4 | Latest Alpine Linux 3.4 series |
| 3.3 | Latest Alpine Linux 3.3 series |
| edge | Latest Alpine Linux edge series |
| 3.11.2 | Alpine Linux 3.11.2 built on 2019-01-13 |
| 3.10.3 | Alpine Linux 3.10.3 built on 2019-01-13 |
| 3.9.4 | Alpine Linux 3.9.4 built on 2019-01-13 |
| 3.8.4 | Alpine Linux 3.8.4 built on 2019-01-13 |
| 3.8.0 | Alpine Linux 3.8.0 built on 2018-08-01 |
| 3.7.3 | Alpine Linux 3.7.3 built on 2019-01-13 |
| 3.6.5 | Alpine Linux 3.6.5 built on 2019-01-13 |
| 3.5.3 | Alpine Linux 3.5.3 built on 2019-01-13 |
| 3.4.6 | Alpine Linux 3.4.6 built on 2019-01-13 |
| 3.3.3 | Alpine Linux 3.3.3 built on 2019-01-13 |

### Issues

I'm sure there are some but currently I'm unaware of current issues.  If you find an issue please let me know on [GitHub](https://github.com/p42/syslog-alpine-docker/issues)

### Prerequisites

A working docker daemon would be helpful to utilize this image.

## How to use this image

This image is meant to be used as a base to build custom docker images from.  It's value is that it takes the base alpine linux image and adds the s6 Overlay.

### Usage

###### Running a quick alpine linux container

~~~
docker run --rm -ti project42/syslog-alpine:latest sh
~~~

This will present you with a shell on fresh container that will stop and remove itself when you exit the container.

###### Dockerfile that is based of of this image.

~~~
FROM project42/syslog-alpine:latest

RUN apk --no-cache --update upgrade && \
apk add --no-cache rsync

ENTRYPOINT ["/init"]
~~~

## Configuration

### Configuration Parameters
| Environment | Description |
| --- | --- |
| TZ | Sets the container Timezone; example: CST6CDT default: UTC |  

## Maintenance

### Shell Access

This image includes the sh shell and when running in detached mode can be connected to with:

~~~
docker exec -ti <container> sh
~~~


## References

Maintainer: [https://jordanclark.us](https://jordanclark.us)

Maintainer's git repo: [https://git.jordanclark.us/devops/syslog-alpine-docker](https://git.jordanclark.us/devops/syslog-alpine-docker)

Github Issues: [https://github.com/p42/syslog-alpine-docker/issues](https://github.com/p42/syslog-alpine-docker/issues)

Alpine Linux: [https://www.alpinelinux.org](https://www.alpinelinux.org)

s6-overlay: [https://github.com/just-containers/s6-overlay](https://github.com/just-containers/s6-overlay)

s6 supervisor: [http://www.skarnet.org/software/s6/index.html](http://www.skarnet.org/software/s6/index.html)
