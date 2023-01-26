              
FROM debian:buster

RUN apt update -y && apt update


RUN apt -y install php php7.3-fpm php7.3-mysql curl

WORKDIR /var/www/html/wordpress

RUN chown -R www-data:www-data /var/www/html/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

# Move it into /usr/local/bin/wp
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp core download --path=/var/www/html/wordpress --allow-root 
RUN wp core config --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --url='localhost' --dbhost=${WORDPRESS_DB_HOST} --path='/var/www/html/wordpress' --allow-root --skip-check
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
RUN service php7.3-fpm start
RUN service php7.3-fpm stop

CMD [ "php-fpm7.3", "-F", "-R"]
   