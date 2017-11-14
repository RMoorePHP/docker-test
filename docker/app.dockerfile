FROM php:7.1-fpm

RUN apt-get update -y

RUN apt-get install -y openssl zip unzip git
RUN docker-php-ext-install pdo mbstring

