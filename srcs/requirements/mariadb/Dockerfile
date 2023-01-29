FROM debian:buster

RUN apt update -y

RUN apt install -y mariadb-server

ARG MYSQL_DATABASE \
	MYSQL_USER \
	MYSQL_PASSWORD

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./db/script.sh /var/lib/mysql/

RUN chmod 777 /var/lib/mysql/script.sh

RUN ./var/lib/mysql/script.sh

CMD ["mysqld"] 
