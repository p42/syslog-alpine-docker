FROM project42/s6-alpine:3.3
MAINTAINER Jordan Clark mail@jordanclark.us

COPY container-files /

RUN apk add --no-cache syslog-ng

ENTRYPOINT ["/init"]
