#!/bin/sh

service mariadb start

sleep 2

mariadb -e "CREATE DATABASE IF NOT EXISTS mynewdb;"

mariadb -e "CREATE USER IF NOT EXISTS 'maneddam'@'localhost' IDENTIFIED BY 'arabi123';"
mariadb -e "GRANT ALL PRIVILEGES ON 'mynewdb'.* TO 'maneddam'@'%' IDENTIFIED BY 'arabi123';"
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop
exec mysqld_safe





