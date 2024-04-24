FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y redis

EXPOSE 6379

RUN service redis-server start

CMD ["redis-server", "--protected-mode", "no"]
