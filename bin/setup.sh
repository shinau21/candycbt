#!/usr/bin/env bash
source .env

sed "s/USERNAME/${MYSQL_USER}/g" /var/www/vhosts/localhost/html/config/config.database.php
sed "s/PASSWORD/${MYSQL_PASSWORD}/g" /var/www/vhosts/localhost/html/config/config.database.php
sed "s/DATABASE/${MYSQL_DATABASE}/g" /var/www/vhosts/localhost/html/config/config.database.php