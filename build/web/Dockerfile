# Upstream's Dockerfile (app/Dockerfile) with two changes: the source is copied from app/, and
# pip installs under constraints.txt, which pins the dependencies requirements.txt leaves open
# (pytz to its version of Django 1.11.7's release month, November 2017; the others to their last
# Python 2 releases), so the build does not drift.
FROM alpine:3.6
MAINTAINER jsvazic@gmail.com

COPY app/ /app/
COPY constraints.txt /constraints.txt

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && rm -rf /var/cache/apk/* \
  && /usr/bin/pip install -c /constraints.txt -r /app/requirements.txt

WORKDIR /app/Tiredful-API

EXPOSE 8000

CMD ["/usr/bin/python", "manage.py", "runserver", "0.0.0.0:8000"]
