FROM debian:jessie

WORKDIR /nginx

EXPOSE 80

RUN apt-get update
RUN apt-get install curl -y
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' >> /etc/apt/sources.list
RUN echo 'deb http://nginx.org/packages/debian/ jessie nginx' >> /etc/apt/sources.list
RUN curl http://nginx.org/keys/nginx_signing.key -o nginx_signing.key
RUN apt-key add nginx_signing.key
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get install haproxy nodejs -y
RUN apt-get clean

COPY nginx.conf /etc/nginx/nginx.conf
