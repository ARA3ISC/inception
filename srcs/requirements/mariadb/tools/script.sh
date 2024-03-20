#! /bin/bash

service mariadb start
sleep 2

mariadb -e "CREATE USER '$db_user'@'$hostname' IDENTIFIED BY '$db_password';"
mariadb -e "CREATE DATABASE $db;"
mariadb -e "GRANT ALL PRIVILEGES ON $db.* to '$db_user'@'$hostname' IDENTIFIED BY '$db_password';"

mariadb -e "FLUSH PRIVILEGES;"

mysqladmin -u root shutdown
exec mysqld_safe
