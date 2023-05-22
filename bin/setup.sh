#!/usr/bin/env bash
source .env

sed -i "s/$user = 'USERNAME';\n$pass = 'PASSWORD';\n$debe = 'DATABASE';/$user = '${MYSQL_USER}';\n$pass = '${MYSQL_PASSWORD}';\n$debe = '${MYSQL_DATABASE}';" sites/localhost/html/config/config.database.php