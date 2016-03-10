FROM nginx

VOLUME /usr/share/nginx/html/config
COPY default.conf /etc/nginx/conf.d/default.conf
