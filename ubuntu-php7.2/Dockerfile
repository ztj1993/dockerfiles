FROM ztj1993/image:ubuntu

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
ADD http://phar.phpunit.cn/phpunit.phar /usr/local/bin/phpunit

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y php7.2-cli \
  && apt-get install -y php7.2-fpm \
  && apt-get install -y php7.2-curl \
  && apt-get install -y php7.2-mbstring \
  && apt-get install -y php7.2-ldap \
  && apt-get install -y php7.2-bcmath \
  && apt-get install -y php7.2-zip \
  && apt-get install -y php7.2-xml \
  && apt-get install -y php7.2-gd \
  && apt-get install -y php7.2-mysql \
  && apt-get install -y php7.2-sqlite3 \
  && chmod +x /usr/local/bin/composer \
  && chmod +x /usr/local/bin/phpunit
