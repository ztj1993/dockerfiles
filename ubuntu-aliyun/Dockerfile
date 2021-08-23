FROM ubuntu:20.04

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN cp /etc/apt/sources.list /etc/apt/sources.list.backup.$(date +%Y-%m-%d-%H-%M-%S) \
  && search="http://[a-z0-9\.]*/ubuntu" \
  && replace="http://mirrors.aliyun.com/ubuntu" \
  && sed -i "s@${search}@${replace}@g" /etc/apt/sources.list
