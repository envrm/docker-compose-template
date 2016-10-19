FROM ubuntu:latest

MAINTAINER Likhachev Maksim <likhachev.m.n@yandex.ru>

#----------------------------------------------------

RUN apt-get update
RUN apt-get install -y git-core

#Адрес для клонирования
ARG url=https://github.com/envrm/docker-compose-template

#Ветка по умолчанию
ARG branch=master

#----------------------------------------------------

RUN git clone $url -b $branch /code

