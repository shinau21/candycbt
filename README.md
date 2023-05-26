# CandyCBT OpenLiteSpeed Docker Container
[![Build Status](https://github.com/shinau21/candycbt/workflows/docker-build/badge.svg)](https://github.com/shinau21/candycbt/actions/)
[![docker pulls](https://img.shields.io/docker/pulls/shinau/candycbt?style=flat&color=blue)](https://hub.docker.com/r/shinau/candycbt)

Install a lightweight CandyCBT container with OpenLiteSpeed Edge or Stable version based on Ubuntu 22.04 Linux.

### Prerequisites
1. [Install Docker](https://www.docker.com/)
2. [Install Docker Compose](https://docs.docker.com/compose/)

## Configuration
Feel free to check [Docker hub Tag page](https://hub.docker.com/repository/docker/shinau/candycbt/tags) if you want to update default CandyCBT. 

## Installation
Clone this repository or copy the files from this repository into a new folder:
```
git clone https://github.com/shinau21/candycbt.git
```
Open a terminal, `cd` to the folder in which `docker compose.yml` is saved, and run:
```
docker compose up -d
```
## Single Installation
Run this command for single build CandyCBT
1. Pull Images
```
docker pull shinau/candycbt:latest
```
2. Run Container
```
docker run -d --name candycbt -p 80:80 -p 443:443 -p 7080:7080 shinau/candycbt
```
