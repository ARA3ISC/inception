FROM debian:bullseye

RUN apt update && apt install -y nginx \
	&& apt install -y openssl \
	mkdir -p /etc/nginx/ssl \
	openssl req -x509 \
	-nodes \
	-out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key \
	-subj "/CN=maneddam.42.fr/C=MA/L=Marrakech" \
	-sha256 -days 356 \
	-newkey rsa:2048
RUN chmod 755 /var/www/html/wp_website
RUN chown -R www-data:www-data /var/www/html/wp_website

COPY ./conf/wp.conf /etc/nginx/sites-available
COPY ./tools/ngx_script.sh /
RUN chmod +x ngx_script.sh

EXPOSE 433

RUN bash ngx_script.sh
CMD ["nginx", "-g", "daemon off;"]
