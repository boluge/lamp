# Image de base
FROM debian:stable

# Qui maintient le Dockerfile
MAINTAINER Stephane DELUCE <boluge@gmail.com>

RUN apt-get update
RUN apt-get dist-upgrade
RUN apt-get -y install git
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server
RUN apt-get -y install apache2 php5 php5-mysql

EXPOSE 80
EXPOSE 443

#CMD "php -v"
