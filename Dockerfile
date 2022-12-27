ARG ARCH
FROM ${ARCH}alpine:3.17.0

MAINTAINER Hemant Negi <hemant.frnz@gmail.com>

RUN apk update && apk add --no-cache syslog-ng

EXPOSE 514/tcp 514/udp

COPY syslog-ng.conf /etc/
CMD ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng.conf"]
