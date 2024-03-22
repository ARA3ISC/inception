#! /bin/bash

mkdir -p /var/www/html/mywebsite
cd /var/www/html/mywebsite

wget https://wordpress.org/latest.tar.gz
sleep 2
tar -xzf latest.tar.gz
sleep 1
cp -R wordpress/* .
rm -rf latest.tar.gz

chown -R www-data:www-data /var/www/html/mywebsite/

cp wp-config-sample.php wp-config.php

sed -i "s/^define( 'DB_NAME', 'database_name_here' );/define( 'DB_NAME', '$db');/" wp-config.php
sed -i "s/^define( 'DB_USER', 'username_here' );/define( 'DB_USER', '$db_user');/" wp-config.php
sed -i "s/^define( 'DB_PASSWORD', 'password_here' );/define( 'DB_PASSWORD', '$db_password');/" wp-config.php
sed -i "s/^define( 'DB_HOST', 'localhost' )/define( 'DB_HOST', '$hostname');/" wp-config.php

mkdir /run/php

php-fpm7.4 -F

