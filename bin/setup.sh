#!/usr/bin/env bash
source .env

sed "s/USERNAME/${MYSQL_USER}/g" sites/localhost/html/config/config.database.php
sed "s/PASSWORD/${MYSQL_PASSWORD}/g" sites/localhost/html/config/config.database.php
sed "s/DATABASE/${MYSQL_DATABASE}/g" sites/localhost/html/config/config.database.php
