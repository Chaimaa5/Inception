FROM debian:buster

RUN apt update -y

RUN apt install -y mariadb-server

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./script.sh /var/lib/mysql/

RUN ["/bin/bash", "/var/lib/mysql/script.sh"]

CMD ["mysqld_safe"] 
