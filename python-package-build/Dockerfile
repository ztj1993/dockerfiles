FROM python:3.7-alpine

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD entrypoint.sh /entrypoint.sh

RUN mkdir /app \
  && chmod +x entrypoint.sh \
  && python -m pip install --upgrade setuptools wheel \
  && python -m pip install --upgrade twine

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
