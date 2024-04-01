#! bin/bash


ln -s /etc/nginx/sites-available/wp.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/adminer.conf /etc/nginx/sites-enabled/

service nginx reload

nginx -g "daemon off;"

