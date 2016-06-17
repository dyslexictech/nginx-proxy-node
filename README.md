nginx-proxy-node
================

A minimal docker image for setting up nginx to wrap your service.

Quickstart
----------

1. Have your service listen on `unix:///default.sock`
2. Add this to your Dockerfile: `CMD rm /default.sock; /etc/init.d/nginx start
   && <your run command here>`

