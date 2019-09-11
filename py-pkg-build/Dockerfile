FROM python:3.7-slim

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD entrypoint.sh /entrypoint.sh

RUN mkdir /app \
  && apt -y update \
  && apt -y --no-install-recommends install gcc python3-dev \
  && apt -y autoremove \
  && rm -r /var/lib/apt/lists/* \
  && chmod +x entrypoint.sh \
  && python -m pip install --upgrade setuptools wheel \
  && python -m pip install --upgrade twine

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
