FROM ztj1993/images:alpine-base

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD docsify_docs_entrypoint.sh /entrypoint.sh
ADD docsify_docs_index.html /docsify_index.html

RUN apk add git \
  && chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
