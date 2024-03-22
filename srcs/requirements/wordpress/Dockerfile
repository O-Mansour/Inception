FROM debian:bullseye

RUN apt update && apt install -y php7.4 php-fpm php-mysql mariadb-client curl

COPY tools/setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh

ENTRYPOINT [ "bash" ]

CMD ["-c", "/tmp/setup.sh"]