FROM debian:bullseye

RUN apt-get update -y && apt-get install -y nginx openssl

COPY tools/setup.sh /tmp/setup.sh

COPY conf/default /etc/nginx/sites-available/default

RUN chmod +x /tmp/setup.sh

ENTRYPOINT ["bash"]

CMD ["-c", "/tmp/setup.sh"]
