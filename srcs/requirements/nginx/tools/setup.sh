#!/bin/bash

mkdir -p /etc/nginx/ssl

openssl req -x509 -nodes -newkey rsa:2048 -keyout $SSL_KEY \
		-out $SSL_CRT -subj "/CN=omansour.42.fr"

sed -i "s|\$SSL_CRT|$SSL_CRT|g; s|\$SSL_KEY|$SSL_KEY|g" /etc/nginx/sites-available/default

exec nginx -g "daemon off;"
