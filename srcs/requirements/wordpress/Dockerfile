# FROM debian:buster

# RUN apt update -y && apt update


# RUN apt -y install php php7.3-fpm php7.3-mysql wget 


# # WORKDIR /var/www/html/wordpress

# # RUN chown -R www-data:www-data /var/www/html/wordpress

# # # Download wp-cli
# # RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# # # Make it executable
# # RUN chmod +x wp-cli.phar

# # # Move it into /usr/local/bin/wp
# # RUN mv wp-cli.phar /usr/local/bin/wp

# # RUN wp core download --allow-root --path='/var/www/html/wordpress'

# # RUN wp core config --dbname='wordpress' --dbuser='wordpress' --url='localhost' --path='/var/www/html/wordpress' --allow-root


# # COPY wp-config.php /var/www/html/wordpress/

# # COPY script.sh /var/www/html/wordpress/

# # RUN chmod 777 /var/www/html/wordpress/script.sh

# # RUN /var/www/html/wordpress/script.sh

# # Installing app
# RUN wget -P /var/www/html https://wordpress.org/latest.tar.gz

# RUN chown -R www-data:www-data /var/www/html/

# RUN chmod -R 777 /var/www/html/

# WORKDIR /var/www/html/

# RUN tar xfz latest.tar.gz

# RUN rm -rf latest.tar.gz

# COPY wp-config.php /var/www/html/wordpress/

# COPY script.sh /var/www/html/wordpress/

# RUN chmod 777 /var/www/html/wordpress/script.sh

# RUN /var/www/html/wordpress/script.sh

# CMD [ "php-fpm7.3", "-F", "-R"]


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

RUN wp core download --allow-root 


RUN wp core config --dbname='wordpress' --dbuser='wordpress'  --dbpass='wordpress' --url='localhost' --path='/var/www/html/wordpress' --allow-root --skip-check

# COPY wp-config.php /var/www/html/wordpress/
RUN wp core install --url='localhost' --title='My_Site' --admin_user='wordpress' --admin_password='wordpress'  --allow-root


COPY script.sh /var/www/html/wordpress/

COPY www.conf /etc/php/7.3/fpm/pool.d/


RUN chmod 777 /var/www/html/wordpress/script.sh

RUN /var/www/html/wordpress/script.sh

CMD [ "php-fpm7.3", "-F", "-R"]