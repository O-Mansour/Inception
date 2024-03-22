#!/bin/bash

mkdir -p /etc/nginx/ssl

openssl req -x509 -nodes -newkey rsa:2048 -keyout \
		"/etc/nginx/ssl/omansour.key" \
		-out "/etc/nginx/ssl/omansour.crt" -subj "/CN=omansour.42.fr"

nginx -g "daemon off;"
