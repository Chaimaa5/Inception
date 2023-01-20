FROM debian:buster

RUN apt update -y && apt update

RUN apt install curl -y

RUN apt -y install php php7.3-fpm php7.3-mysql mariadb-client

WORKDIR /var/www/html/wordpress

RUN chown -R www-data:www-data /var/www/html/wordpress

# Download wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# Make it executable
RUN chmod +x wp-cli.phar

# Move it into /usr/local/bin/wp
RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --path=/var/www/html/wordpress --allow-root 

RUN wp core config --dbname='wordpress' --dbuser='wordpress'  --dbpass='wordpress' --dbhost='mariadb' --url='localhost'  --allow-root --skip-check
# RUN mv wp-config-sample.php  wp-config.php 
# RUN wp config create --dbname=wordpress --dbuser=wordpress --dbpass=wordpress --dbhost=mariadb --allow-root

# RUN wp core install --path='/var/www/html/wordpress' --dbname='wordpress' --dbuser='wordpress'  --dbpass='wordpress' --dbhost='mariadb' --url='localhost'  --allow-root


COPY config.sh /var/www/html/wordpress/

COPY www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod 777 /var/www/html/wordpress/config.sh

RUN /var/www/html/wordpress/config.sh

CMD [ "php-fpm7.3", "-F", "-R"]