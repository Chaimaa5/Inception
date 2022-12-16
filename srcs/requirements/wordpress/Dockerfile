FROM debian:buster

RUN apt update -y && apt update

RUN apt install curl -y

RUN apt -y install php7.3-fpm php7.3-mysql

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root

RUN wp config create --url=cel-mhan.42.fr --title=cel-mhan --admin_user=cel-mhan --admin_password=strongpassword --admin_email=cel-mhan@42.com --allow-root