#!/bin/bash

service mysql start

mysql -u root -e

CREATE DATABASE 'wordpress';

CREATE USER 'db_user' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'db_user' IDENTIFIED BY 'password';