FROM debian:buster

RUN apt update -y && apt update


RUN apt -y install php php7.3-fpm php7.3-mysql wget

# Installing app
RUN wget -P /var/www/html https://wordpress.org/latest.tar.gz

RUN chown -R www-data:www-data /var/www/html/

RUN chmod -R 777 /var/www/html/

WORKDIR /var/www/html/

RUN tar xfz latest.tar.gz

RUN rm -rf latest.tar.gz

# CMD while true; do sleep 1; done