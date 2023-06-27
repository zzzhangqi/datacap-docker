FROM registry.cn-hangzhou.aliyuncs.com/zqqq/mysql:5.7

ARG DATACAP_VERSION=1.10.0

COPY datacap.sql /docker-entrypoint-initdb.d/datacap.sql
# RUN curl -o /docker-entrypoint-initdb.d/datacap.sql https://ghproxy.com/https://raw.githubusercontent.com/EdurtIO/datacap/${DATACAP_VERSION}/core/datacap-server/src/main/schema/datacap.sql

ENV MYSQL_DATABASE=datacap
ENV MYSQL_ROOT_PASSWORD=root

VOLUME [ "/var/lib/mysql" ]
