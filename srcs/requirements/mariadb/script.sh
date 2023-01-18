#!/bin/bash

service mysql start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"

mysql -u root -e "CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED BY 'wordpress';"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'%' IDENTIFIED BY 'wordpress';"

mysql -u root -e "FLUSH PRIVILEGES;"

#mysql -u root -e "ALTER USER 'root'@localhost IDENTIFIED BY 'wordpress';"

