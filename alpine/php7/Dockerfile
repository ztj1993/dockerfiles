FROM ztj1993/image:alpine-base

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN apk search -qe php7-* | \
  grep -v apache2 | \
  grep -v imagick | \
  grep -v snmp | \
  xargs apk add
