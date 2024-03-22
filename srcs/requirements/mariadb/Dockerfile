FROM debian:bullseye

RUN apt update && apt install -y mariadb-server

COPY tools/setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh


ENTRYPOINT [ "bash" ]

CMD ["-c", "/tmp/setup.sh"]
