FROM alpine:3.11

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
ADD http://phar.phpunit.cn/phpunit.phar /usr/local/bin/phpunit

RUN echo "http://mirrors.aliyun.com/alpine/v3.11/main" > /etc/apk/repositories \
  && echo "http://mirrors.aliyun.com/alpine/v3.11/community" >> /etc/apk/repositories \
  && apk update \
  && apk search -qe php7-* | grep -v gmagick | xargs apk add \
  && chmod +x /usr/local/bin/composer \
  && chmod +x /usr/local/bin/phpunit \
  && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
  && rm -rf /var/cache/apk/*
