FROM ubuntu:14.04
MAINTAINER Docker Education Team <education@docker.com>
RUN apt-get update
sh 'wget -qO- https://get.docker.com/'
sh 'usermod -aG docker $(whoami)'
sh 'apt-get -y install python-pip'
sh 'pip install docker-compose'
sh 'docker-compose up'

