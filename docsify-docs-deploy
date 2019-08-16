FROM ztj1993/images:alpine-base

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD https://raw.githubusercontent.com/ztj1993/files/master/docsify_entrypoint.sh /entrypoint.sh
ADD https://raw.githubusercontent.com/ztj1993/files/master/docsify_index.html /docsify_index.html

RUN apk add git \
  && chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
