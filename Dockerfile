FROM mysql:8.0

COPY datacap.sql /docker-entrypoint-initdb.d/datacap.sql

ENV MYSQL_DATABASE=datacap
ENV MYSQL_ROOT_PASSWORD=root

VOLUME [ "/var/lib/mysql" ]
