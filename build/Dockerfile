FROM mysql:5.7

COPY ./scripts/initdb.sql /docker-entrypoint-initdb.d/initdb.sql

COPY ./scripts/mysql-entrypoint.sh /docker-entrypoint.sh