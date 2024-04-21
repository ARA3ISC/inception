#! /bin/bash

service mariadb start
sleep 2

mariadb -e "CREATE USER '$db_user'@'%' IDENTIFIED BY '$db_password';"
mariadb -e "CREATE DATABASE $db;"
mariadb -e "GRANT ALL PRIVILEGES ON $db.* to '$db_user'@'%' IDENTIFIED BY '$db_password';"

mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop
exec mysqld_safe
