FROM ztj1993/image:alpine

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ENV SERVER_NAME="localhost"
ENV SERVER_ADMIN="you@example.com"
ENV SERVER_ROOT="/var/www/localhost/htdocs"

RUN apk search -qe php7-* | xargs apk add \
  && apk add php7 \
  && sed -i "s@Require ip 127@Require ip 127 192 10@" /etc/apache2/conf.d/info.conf \
  && sed -i "s@AllowOverride None@AllowOverride All@" /etc/apache2/httpd.conf \
  && sed -i "s@AllowOverride none@AllowOverride all@" /etc/apache2/httpd.conf \
  && sed -i "s@^#LoadModule rewrite_module@LoadModule rewrite_module@" /etc/apache2/httpd.conf \
  && sed -i "s@^#LoadModule info_module@LoadModule info_module@" /etc/apache2/httpd.conf \
  && sed -i 's@^ServerName.*@ServerName \${SERVER_NAME}@' /etc/apache2/httpd.conf \
  && sed -i 's@^ServerAdmin.*@ServerAdmin \${SERVER_ADMIN}@' /etc/apache2/httpd.conf \
  && sed -i 's@/var/www/localhost/htdocs@\${SERVER_ROOT}@' /etc/apache2/httpd.conf \
  && mkdir -p /run/apache2

EXPOSE 80/tcp

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
