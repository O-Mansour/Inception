FROM debian:bullseye

RUN apt update 

RUN apt install -y nginx openssl

COPY tools/setup.sh /tmp/setup.sh
COPY conf/nginx.conf /etc/nginx/conf.d/nginx.conf

RUN chmod +x /tmp/setup.sh

ENTRYPOINT [ "bash" ]

CMD ["-c", "/tmp/setup.sh"]
