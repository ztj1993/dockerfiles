FROM alpine:3.8

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN echo "http://mirrors.aliyun.com/alpine/v3.8/main" > /etc/apk/repositories \
  && echo "http://mirrors.aliyun.com/alpine/v3.8/community" >> /etc/apk/repositories \
  && apk update
