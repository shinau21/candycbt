# OpenLiteSpeed WordPress Docker Container
[![Build Status](https://github.com/shinau21/candycbt/workflows/docker-build/badge.svg)](https://github.com/shinau21/candycbt/actions/)
[![docker pulls](https://img.shields.io/docker/pulls/shinau/candycbt?style=flat&color=blue)](https://hub.docker.com/r/shinau/openlitespeed)

Install a lightweight WordPress container with OpenLiteSpeed Edge or Stable version based on Ubuntu 22.04 Linux.

### Prerequisites
1. [Install Docker](https://www.docker.com/)
2. [Install Docker Compose](https://docs.docker.com/compose/)

## Configuration
Edit the `.env` file to update the demo site domain, default MySQL user, and password.
Feel free to check [Docker hub Tag page](https://hub.docker.com/repository/docker/shinau21/openlitespeed/tags) if you want to update default openlitespeed and php versions. 

## Installation
Clone this repository or copy the files from this repository into a new folder:
```
git clone https://github.com/shinau21/candycbt.git
```
Open a terminal, `cd` to the folder in which `docker compose.yml` is saved, and run:
```
docker compose up
```
## Components
The docker image installs the following packages on your system:

|Component|Version|
| :-------------: | :-------------: |
|Linux|Ubuntu 22.04|
|OpenLiteSpeed|[Latest version](https://openlitespeed.org/downloads/)|
|CandyCBT|[Current version: 2.9.4](https://cbtcandy.com/)|
|MariaDB|[Stable version: 10.5](https://hub.docker.com/_/mariadb)|
|PHP|[Latest version](http://rpms.shinau21.com/debian/)|
|LiteSpeed Cache|[Latest from WordPress.org](https://wordpress.org/plugins/litespeed-cache/)|
|ACME|[Latest from ACME official](https://github.com/acmesh-official/get.acme.sh)|
|phpMyAdmin|[Latest from dockerhub](https://hub.docker.com/r/bitnami/phpmyadmin/)|

## Data Structure
Cloned project 
```bash
├── acme
├── bin
│   └── container
├── data
│   └── db
├── logs
│   ├── access.log
│   ├── error.log
│   ├── lsrestart.log
│   └── stderr.log
├── lsws
│   ├── admin-conf
│   └── conf
├── sites
│   └── localhost
├── LICENSE
├── README.md
└── docker-compose.yml
```

  * `acme` contains all applied certificates from Lets Encrypt

  * `bin` contains multiple CLI scripts to allow you add or delete virtual hosts, install applications, upgrade, etc 

  * `data` stores the MySQL database

  * `logs` contains all of the web server logs and virtual host access logs

  * `lsws` contains all web server configuration files

  * `sites` contains the document roots (the WordPress application will install here)

## Usage
### Setup Environment File
Setup Environment File to configure CandyCBT Database
Example:
```
TimeZone=Asia/Jakarta
OLS_VERSION=1.7.16
PHP_VERSION=lsphp74
MYSQL_DATABASE=database
MYSQL_ROOT_PASSWORD=password
MYSQL_USER=user
MYSQL_PASSWORD=password
DOMAIN=localhost
```
### Setup Database
Setup your Database on .env file, and run this command
```
bash bin/setup.sh
```
### Starting a Container
Start the container with the `up` or `start` methods:
```
docker compose up
```
You can run with daemon mode, like so:
```
docker compose up -d
```
The container is now built and running. 
### Stopping a Container
```
docker compose stop
```
### Removing Containers
To stop and remove all containers, use the `down` command:
```
docker compose down
```
### Setting the WebAdmin Password
We strongly recommend you set your personal password right away.
```
bash bin/webadmin.sh my_password
```
### Update Web Server
To upgrade the web server to latest stable version, run the following:
```
bash bin/webadmin.sh [-U, --upgrade]
```
### Apply OWASP ModSecurity
Enable OWASP `mod_secure` on the web server: 
```
bash bin/webadmin.sh [-M, --mod-secure] enable
```
Disable OWASP `mod_secure` on the web server: 
```
bash bin/webadmin.sh [-M, --mod-secure] disable
```
>Please ignore ModSecurity warnings from the server. They happen if some of the rules are not supported by the server.
### Accessing the Database
After installation, you can use phpMyAdmin to access the database by visiting `http://127.0.0.1:8080` or `https://127.0.0.1:8443`. The default username is `root`, and the password is the same as the one you supplied in the `.env` file.

3. Build and start it with command:
```
docker compose up --build
```