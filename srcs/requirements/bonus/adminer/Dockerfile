FROM debian:bullseye

RUN apt update && apt install wget php php-mysql php7.4 php7.4-fpm curl -y

COPY ./tools/adm-script.sh /
RUN chmod +x adm-script.sh

EXPOSE 9999

# CMD [ "bash" ]
CMD ["bash", "adm-script.sh"]

