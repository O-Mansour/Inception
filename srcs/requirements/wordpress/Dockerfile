FROM debian:oldstable

RUN apt-get update -y && apt-get install -y php7.4 php-fpm php-mysql mariadb-client curl

COPY tools/setup.sh /tmp/setup.sh

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/

RUN chmod +x /tmp/setup.sh

ENTRYPOINT [ "bash" ]

CMD ["-c", "/tmp/setup.sh"]
