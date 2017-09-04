FROM ubuntu:16.04

LABEL maintainer="florianocomercial@gmail.com"

RUN apt-get update -y && add-apt-repository ppa:nginx/stable \
    && apt-get install python-software-properties software-properties-common -y \
    && apt-get update -y && apt-get install nginx -y \
    && apt-get install php7.0-fpm php7.0-cli php7.0-gd \
    php7.0-dev php7.0-json php7.0-mysql php7.0-xml \
    php7.0-xmlrpc php7.0-imap php7.0-mbstring php7.0-zip \
    wget apt-utils php-redis -y && \
    && rm -rf /var/lib/apt/lists/* && \
    && echo 'export LANG=C' >> /etc/profile \
    && rm /etc/localtime \
    && ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime \
    && mkdir /run/php

WORKDIR /

# start
ENTRYPOINT php-fpm7.0 && nginx -g 'daemon off'

# Ports
EXPOSE 80
