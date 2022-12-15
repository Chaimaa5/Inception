FROM debian:buster

RUN apt update -y

RUN apt install -y mariadb-server

COPY ./50-server.conf /etc/mysql/mariadb.conf.d/

EXPOSE 3306:3306

CMD ["mysqld_safe"] 
