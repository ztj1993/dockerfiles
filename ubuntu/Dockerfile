FROM ubuntu:18.04

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD https://raw.githubusercontent.com/ztj1993/shell/master/apt-aliyun-mirror.sh /tmp/apt-aliyun-mirror.sh

RUN chmod +x /tmp/apt-aliyun-mirror.sh \
  && bash /tmp/apt-aliyun-mirror.sh \
  && rm -rf /tmp/apt-aliyun-mirror.sh
