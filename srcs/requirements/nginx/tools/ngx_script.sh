#! bin/bash


sed -i "s/^;pm.status_listen = 127.0.0.1:9001/listen=9000/" /etc/php/7.4/fpm/pool.d/www.conf
ln -s /etc/nginx/sites-available/wp.conf /etc/nginx/sites-enabled/

service nginx reload

nginx -g daemon off;
