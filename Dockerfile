FROM php:8.0-apache
MAINTAINER OMKAR MUGDAR
COPY ./php/src/index.php /var/www/html/
EXPOSE 8000
