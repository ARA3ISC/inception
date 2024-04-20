#!/bin/sh


echo "maxmemory 256mb" >> /etc/redis/redis.conf
echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf
sed -i -r "s/bind 127.0.0.1/#bind 127.0.0.0/" /etc/redis/redis.conf
sed -i -r "s/protected-mode yes/protected-mode no/" /etc/redis/redis.conf


# service redis-server start

# Tail the logs to keep the container running
# tail -f /var/log/redis/redis-server.log
redis-server --protected-mode no
