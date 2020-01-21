FROM alpine:3.8

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN echo "http://mirrors.aliyun.com/alpine/v3.8/main" > /etc/apk/repositories \
  && echo "http://mirrors.aliyun.com/alpine/v3.8/community" >> /etc/apk/repositories \
  && apk update \
  && apk search -qe php5-* | xargs apk add \
  && sed -i 's/^#ServerName.*/ServerName localhost/' /etc/apache2/httpd.conf \
  && mkdir -p /run/apache2

EXPOSE 80/tcp
EXPOSE 443/tcp

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
