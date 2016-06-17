FROM node:latest

WORKDIR /nginx

EXPOSE 80

RUN echo 'deb http://nginx.org/packages/debian/ jessie nginx' >> /etc/apt/sources.list && curl http://nginx.org/keys/nginx_signing.key -o nginx_signing.key && apt-key add nginx_signing.key && apt-get update && apt-get install nginx -y

COPY nginx.conf /etc/nginx/nginx.conf
