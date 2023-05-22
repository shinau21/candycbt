#!/usr/bin/env bash
source .env

sed -i "s/$user = 'USERNAME';/$user = '${MYSQL_USER}';/g" sites/localhost/html/config/config.database.php
sed -i "s/$pass = 'PASSWORD';/$pass = '${MYSQL_PASSWORD}';/g" sites/localhost/html/config/config.database.php
sed -i "s/$debe = 'DATABASE';/$debe = '${MYSQL_DATABASE}';/g" sites/localhost/html/config/config.database.php
