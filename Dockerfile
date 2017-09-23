FROM ubuntu:14.04
MAINTAINER Docker Education Team <education@docker.com>
RUN apt-get update
RUN apt-get -y install python-pip

RUN pip install docker-compose
RUN docker-compose up

