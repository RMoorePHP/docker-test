FROM php:7.1-fpm

WORKDIR /app

RUN usermod -u 1000 www-data


