#! /bin/bash

# ln -s /etc/nginx/sites-available/custom.conf /etc/nginx/sites-enabled/

service nginx reload

nginx -g "daemon off;"
