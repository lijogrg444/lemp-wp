#!/bin/bash
pwd=`dirname $0`
sudo apt update
sudo apt install nginx
sudo apt install mysql-server
sudo apt install php-fpm php-mysql
read -e -p "Target directory: " -i "/var/www" dir
dir=${dir:-"/var/www"}
read -e -p "Database: " -i "wordpress" db
db=${db:-"wordpress"}
sudo apt-get install -y \
	mysql-server \
	nginx \
	php-curl \
	php-fpm \
	php-gd \
	php-mysql \
	wget \
	unzip
  
