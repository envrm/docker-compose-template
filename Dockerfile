FROM ubuntu:latest

MAINTAINER Likhachev Maksim <likhachev.m.n@yandex.ru>

#----------------------------------------------------

RUN apt-get update
RUN apt-get install -y git-core

ARG url=https://github.com/envrm/docker-compose-template

#----------------------------------------------------

RUN git clone $url /code

