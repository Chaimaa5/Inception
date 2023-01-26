FROM debian:buster

RUN apt update -y

RUN apt install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./db/script.sh /var/lib/mysql/

CMD ["/bin/bash", "/var/lib/mysql/script.sh"]

CMD ["mysqld_safe"] 
