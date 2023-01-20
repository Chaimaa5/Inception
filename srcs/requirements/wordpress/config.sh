# wp config create --dbname=wordpress --dbuser=wordpress --dbpass=wordpress --dbhost=mariadb
mv www.conf /etc/php/7.3/fpm/pool.d/
service php7.3-fpm start
service php7.3-fpm stop


# wp core config --dbname='wordpress' --dbuser='wordpress'  --dbpass='wordpress' --url='localhost' --path='/var/www/html/wordpress' --allow-root --skip-check
# echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
# wp config create --dbname=mydb --dbuser=myuser --dbpass=mypassword --dbhost=mariadb

# mv www.conf /etc/php/7.3/fpm/pool.d/
# service php7.3-fpm start
# service php7.3-fpm stop