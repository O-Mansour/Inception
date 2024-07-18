FROM debian:oldstable

RUN apt-get update -y && apt-get install -y mariadb-server

COPY tools/setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh

ENTRYPOINT [ "bash" ]

CMD ["-c", "/tmp/setup.sh"]
