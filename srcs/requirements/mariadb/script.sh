#!/bin/bash

service mysql start

mysql -u root -e "CREATE DATABASE wordpress;"

mysql -u root -e "CREATE USER 'db_user' IDENTIFIED BY 'password';"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'db_user' IDENTIFIED BY 'password';"

mysql -u root -e "FLUSH PRIVILEGES;"

mysql -u root -e "ALTER USER 'root'@localhost IDENTIFIED BY 'new_password';"

