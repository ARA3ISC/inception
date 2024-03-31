FROM debian:bullseye

RUN apt update && \
	apt install vsftpd ftp -y

COPY ./tools/ftp-script.sh /
RUN chmod +x ftp-script.sh

CMD ["bash", "ftp-script.sh"]

