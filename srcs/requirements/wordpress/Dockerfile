FROM debian:buster

RUN apt update -y && apt update

WORKDIR /var/www/html/wordpress

RUN apt install curl -y

RUN apt -y install php7.3-fpm php7.3-mysql

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root

RUN wp core config  --dbname='wordpress' --dbuser='db_user' --url='localhost' --path='/var/www/html/wordpress' --allow-root