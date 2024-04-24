FROM debian:bullseye

RUN apt update && apt install nginx -y

RUN mkdir -p /var/www/html/custom && \
	chmod 755 /var/www/html/custom

COPY ./conf/custom.conf /etc/nginx/conf.d/
COPY ./app/ /var/www/html/custom/


EXPOSE 3131

CMD [ "nginx", "-g", "daemon off;" ]
