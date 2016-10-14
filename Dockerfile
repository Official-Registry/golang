FROM ubuntu:16.04

MAINTAINER github.com/Official-Registry, lizhongwen1989@gmail.com

RUN apt-get update -y \
  && apt-get install -y curl tar \
  && cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV GOROOT=/usr/local/go
ENV PATH=${PATH}:${GOROOT}/bin

RUN curl --fail --location --retry 3 https://storage.googleapis.com/golang/go1.4.3.linux-amd64.tar.gz \
  -o /tmp/golang.tar.gz \
  && tar -zvxf /tmp/golang.tar.gz -C /usr/local/ \
  && rm -rf /tmp/golang.tar.gz
