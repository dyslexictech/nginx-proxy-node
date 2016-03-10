FROM node:latest

WORKDIR /nginx

COPY sources.list /etc/apt/sources.list

EXPOSE 80

RUN curl http://nginx.org/keys/nginx_signing.key -o nginx_signing.key
RUN apt-key add nginx_signing.key
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean

COPY nginx.conf /etc/nginx/nginx.conf
