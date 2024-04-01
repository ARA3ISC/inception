#! /bin/bash

mkdir -p /var/www/html/adminer/
chown -R www-data:www-data /var/www/html/mywebsite/

wget https://www.adminer.org/latest.php -O /var/www/html/adminer/adminer.php


sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 2222/g' /etc/php/7.4/fpm/pool.d/www.conf

mkdir /run/php

php-fpm7.4 -F
