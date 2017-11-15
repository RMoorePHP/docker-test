FROM laradock/php-fpm:1.4-71


RUN usermod -u 1000 www-data

WORKDIR /app



EXPOSE 9000
