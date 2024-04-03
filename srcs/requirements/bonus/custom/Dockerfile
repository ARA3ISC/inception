FROM debian:bullseye

RUN mkdir -p /var/www/html/custom && \
	chmod 755 /var/www/html/custom
	# chown -R www-data:www-data /var/www/html/custom

RUN apt update
RUN apt install nginx -y
# RUN mkdir /run/php && \
	# chmod 755 /var/www/html/custom \
	# && chown -R www-data:www-data /var/www/html/custom

COPY ./conf/custom.conf /etc/nginx/conf.d/
COPY ./app/ /var/www/html/custom/

COPY ./tools/custom-script.sh /
RUN chmod +x custom-script.sh


EXPOSE 3131

CMD [ "bash", "custom-script.sh" ]



