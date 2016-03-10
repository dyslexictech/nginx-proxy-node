FROM node:latest

WORKDIR /nginx

COPY sources.list /etc/apt/sources.list

RUN curl http://nginx.org/keys/nginx_signing.key -o nginx_signing.key
RUN apt-key add nginx_signing.key
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install nginx -y

COPY nginx.conf /etc/nginx/nginx.conf
