FROM mysql:8.0

COPY ./init_db.sql /tmp

CMD ["mysqld", "--init-file=/tmp/init_db.sql", "--bind-address=0.0.0.0"]