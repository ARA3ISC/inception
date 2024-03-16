FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y \
	php \
	php-fpm \
	php-mysql \
	php-curl \
	php-gd \
	php-mbstring \
	php-xml \
	php-xmlrpc \
	php-soap \
	&& \
	rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html && \
    curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xzf wordpress.tar.gz -C /var/www/html --strip-components=1 && \
    rm wordpress.tar.gz

EXPOSE 9000

CMD ["php-fpm", "--nodaemonize"]
