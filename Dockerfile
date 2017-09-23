FROM ubuntu:14.04
MAINTAINER Docker Education Team <education@docker.com>
RUN apt-get update
RUN wget -qO- https://get.docker.com/ | sh
RUN usermod -aG docker $(whoami)
RUN apt-get -y install python-pip
RUN pip install docker-compose
RUN docker-compose up

