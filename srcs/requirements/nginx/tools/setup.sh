#!/bin/bash

mkdir -p /etc/nginx/ssl

openssl req -x509 -nodes -newkey rsa:2048 -keyout ${SSL_KEY} \
		-out ${SSL_CRT} -subj "/CN=omansour.42.fr"

exec nginx -g "daemon off;"
