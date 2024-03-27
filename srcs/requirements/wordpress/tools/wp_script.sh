#! /bin/bash

#installing wp

mkdir -p /var/www/html/mywebsite
cd /var/www/html/mywebsite
chown -R www-data:www-data /var/www/html/mywebsite/

# wget https://wordpress.org/latest.tar.gz
# sleep 2
# tar -xzf latest.tar.gz
# sleep 1
# cp -R wordpress/* .
# rm -rf latest.tar.gz

# installing wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# using wp instead of wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root
cp wp-config-sample.php wp-config.php

#configuring database in wp config file
sed -i "s/^define( 'DB_NAME', 'database_name_here' );/define( 'DB_NAME', '$db');/" wp-config.php
sed -i "s/^define( 'DB_USER', 'username_here' );/define( 'DB_USER', '$db_user');/" wp-config.php
sed -i "s/^define( 'DB_PASSWORD', 'password_here' );/define( 'DB_PASSWORD', '$db_password');/" wp-config.php
sed -i "s/^define( 'DB_HOST', 'localhost' )/define( 'DB_HOST', '$hostname');/" wp-config.php

mkdir /run/php

wp core install --url=https://$WP_DOMAIN --title="$WP_TITLE" --admin_user=$WP_ADMIN --admin_password=$WP_PASSWORD --admin_email=$WP_ADMIN_MAIL --allow-root


php-fpm7.4 -F

