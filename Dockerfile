FROM ubuntu:latest

MAINTAINER Likhachev Maksim <likhachev.m.n@yandex.ru>

#----------------------------------------------------

RUN apt-get update
RUN apt-get install -y git-core

#Адрес для клонирования
ARG url=https://github.com/envrm/docker-compose-template

#Ветка по умолчанию
ARG branch=master

RUN echo '#!/bin/bash' > /init.sh
RUN echo git clone $url -b $branch /tmp/host/code >> /init.sh
RUN echo cp -r -v /code /tmp/host/ >> /init.sh
RUN chmod +x /init.sh

#----------------------------------------------------

ENTRYPOINT "/init.sh"

