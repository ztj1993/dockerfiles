FROM alpine:3.8

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN apk update \
  && apk search -qe php5-* | xargs apk add \
  && sed -i 's/^#ServerName.*/ServerName localhost/' /etc/apache2/httpd.conf \
  && sed -i "s@Require ip 127@Require ip 127 192 10@" /etc/apache2/conf.d/info.conf \
  && sed -i "s@AllowOverride None@AllowOverride All@" /etc/apache2/httpd.conf \
  && sed -i "s@AllowOverride none@AllowOverride all@" /etc/apache2/httpd.conf \
  && sed -i "s@^#LoadModule rewrite_module@LoadModule rewrite_module@" /etc/apache2/httpd.conf \
  && sed -i "s@^#LoadModule info_module@LoadModule info_module@" /etc/apache2/httpd.conf \
  && mkdir -p /run/apache2 \
  && ln -sf /dev/stdout /var/log/apache2/access.log \
  && ln -sf /dev/stderr /var/log/apache2/error.log \
  && rm -rf /var/cache/apk/*

EXPOSE 80/tcp
EXPOSE 443/tcp

VOLUME /var/www/localhost/htdocs
WORKDIR /var/www/localhost/htdocs

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
