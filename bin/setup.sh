#!/usr/bin/env bash
source .env

sed -i "s/'USERNAME'/'${MYSQL_USER}'/g" sites/localhost/html/config/config.database.php
sed -i "s/'PASSWORD'/'${MYSQL_PASSWORD}'/g" sites/localhost/html/config/config.database.php
sed -i "s/'DATABASE'/'${MYSQL_DATABASE}'/g" sites/localhost/html/config/config.database.php
