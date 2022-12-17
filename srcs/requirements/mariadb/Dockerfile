FROM debian:buster

RUN apt update -y

RUN apt install -y mariadb-server

COPY ./50-server.conf /etc/mysql/mariadb.conf.d/

CMD ["mysqld_safe"] 
