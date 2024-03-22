FROM debian:bullseye

RUN apt update && apt upgrade -y
# RUN export DEBIAN_FRONTEND=noninteractive
RUN apt install -y php7.4 php7.4-fpm php-mysql wget mariadb-client php-curl

COPY ./tools/wp_script.sh /
RUN chmod +x /wp_script.sh
EXPOSE 433

CMD ["bash", "wp_script.sh"]



