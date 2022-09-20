FROM alpine:3.12
MAINTAINER Miguel T <miguelwill@gmail.com>

RUN apk add --no-cache  --repository http://dl-cdn.alpinelinux.org/alpine/edge/community php
RUN apk update \
  && apk add incron \
  && apk add curl \
  && apk add strace \
  && apk add php7-cli php7-mysqlnd php7-mysqli php7-curl

RUN mkdir -p /watches /scripts

CMD /usr/sbin/incrond
