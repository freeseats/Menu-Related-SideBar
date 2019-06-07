FROM mysql:5.7
ENV MYSQL_DATABASE complete_menu
COPY ./schema.sql /docker-entrypoint-initdb.d/
EXPOSE 3306