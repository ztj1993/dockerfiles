FROM ztj1993/image:alpine

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN apk search -qe php7-* | xargs apk add \
  && apk add php5 \
  && sed -i 's/^#ServerName.*/ServerName localhost/' /etc/apache2/httpd.conf \
  && mkdir -p /run/apache2

EXPOSE 80/tcp

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
