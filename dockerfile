FROM debian:jessie

MAINTAINER afohl <andreas(at)fohl.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install proftpd -y
ADD launch /launch
RUN chmod +x /launch
RUN echo Europe/Berlin > /etc/timezone && dpkg-reconfigure tzdata

EXPOSE 21 1024-1064

