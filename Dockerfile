FROM mysql:5.7

ARG DATACAP_VERSION=1.8.0

RUN curl -o /docker-entrypoint-initdb.d/datacap.sql https://ghproxy.com/https://raw.githubusercontent.com/EdurtIO/datacap/${DATACAP_VERSION}/core/datacap-server/src/main/schema/datacap.sql

ENV MYSQL_DATABASE=datacap
ENV MYSQL_ROOT_PASSWORD=root

VOLUME [ "/var/lib/mysql" ]
