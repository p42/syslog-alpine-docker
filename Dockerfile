<<<<<<< HEAD
FROM project42/s6-alpine:3.4
=======
FROM project42/s6-alpine:3.8
>>>>>>> master
MAINTAINER Jordan Clark mail@jordanclark.us

COPY container-files /

RUN apk add --no-cache syslog-ng

ENTRYPOINT ["/init"]
