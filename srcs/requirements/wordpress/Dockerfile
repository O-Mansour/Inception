FROM debian:oldstable

RUN apt-get update -y && apt-get install -y php7.4 php-fpm php-mysql mariadb-client curl

COPY tools/setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh

WORKDIR /var/www/html/

ENTRYPOINT [ "bash" ]

CMD ["-c", "/tmp/setup.sh"]
