#!/bin/bash

service mysql start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

mysql -u root -e "CREATE USER IF NOT EXISTS ${MYSQL_USER}@'%' IDENTIFIED BY ${MYSQL_PASSWORD};"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO ${MYSQL_USER}@'%' IDENTIFIED BY ${MYSQL_PASSWORD};"

mysql -u root -e "FLUSH PRIVILEGES;"

mysql -u root -e "ALTER USER 'root'@localhost IDENTIFIED BY ${MYSQL_PASSWORD;"
