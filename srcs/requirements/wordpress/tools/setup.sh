#!/bin/bash

wp core download --allow-root

wp config create --allow-root \
                 --dbname=$DB_NAME \
                 --dbuser=$DB_USER \
                 --dbpass=$DB_USER_PWD \
                 --dbhost=mariadb

wp core install --url=$WP_URL \
                --title=$WP_TITLE \
                --admin_user=$WP_ADMIN \
                --admin_password=$WP_ADMIN_PWD \
                --admin_email=$WP_ADMIN_EMAIL \
                --skip-email \
                --allow-root

wp user create $WP_USER $WP_USER_EMAIL \
               --role=author \
               --user_pass=$WP_USER_PWD \
               --allow-root

wp theme install generatepress --activate --allow-root

mkdir /run/php

sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 9000|g' /etc/php/7.4/fpm/pool.d/www.conf

exec /usr/sbin/php-fpm7.4 -F
