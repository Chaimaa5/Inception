#!/bin/bash
wp core install --url='localhost' --title='My_Site' --admin_user=${WORDPRESS_DB_USER} --admin_password=${WORDPRESS_PASSWORD}  --admin_email=${ADMIN_EMAIL} --allow-root
wp user create ${WORDPRESS_USER_NAME} ${WORDPRESS_USER_EMAIL} --role=editor --user_pass=${WORDPRESS_PASSWORD} --allow-root
exec "$@"