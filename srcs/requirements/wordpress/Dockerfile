FROM debian:bullseye

RUN apt update && \
	export DEBIAN_FRONTEND=noninteractive \
	apt install -y \
	php8.1 \
	php8.1-fpm \
	php-mysql wget\
	mariadb-client \
	php-curl vim

COPY ./tools/wp_script.sh /

CMD ["bash", "wp_script.sh"]



