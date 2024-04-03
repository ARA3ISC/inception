FROM debian:bullseye

RUN apt update
RUN apt install -y nginx openssl vim
RUN mkdir /etc/nginx/ssl
RUN	openssl req -x509 \
	-nodes \
	-out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key \
	-subj "/CN=maneddam.42.fr/C=MA/L=Marrakech" \
	-sha256 -days 356 \
	-newkey rsa:2048

RUN mkdir /var/www/html/mywebsite \
	&& mkdir /var/www/html/adminer \
	&& chmod 755 /var/www/html/mywebsite \
	&& chmod 755 /var/www/html/adminer \
	&& chown -R www-data:www-data /var/www/html/mywebsite \
	&& chown -R www-data:www-data /var/www/html/adminer

# COPY ./conf/wp.conf /etc/nginx/conf.d/
COPY ./conf/wp.conf /etc/nginx/sites-available/
COPY ./conf/adminer.conf /etc/nginx/sites-available/
COPY ./tools/ngx_script.sh /
RUN chmod +x ngx_script.sh

EXPOSE 443
EXPOSE 9999
EXPOSE 3131

# CMD ["nginx", "-g", "'daemon off;'"]
CMD ["bash", "./ngx_script.sh"]
