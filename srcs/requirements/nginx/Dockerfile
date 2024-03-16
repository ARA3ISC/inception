FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx \
	&& apt-get install -y openssl \
	mkdir -p /etc/nginx/ssl \
	openssl req -x509 \
	-nodes \
	-out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key \
	-subj "/CN=maneddam.42.fr/C=MA/L=Marrakech" \
	-sha256 -days 356 \
	-newkey rsa:2048
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html


COPY ./conf/nginx.conf /etc/nginx/conf.d/


EXPOSE 433

CMD ["nginx", "-g", "daemon off;"]
