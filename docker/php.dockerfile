FROM laradock/php-fpm:1.4-71

RUN printf "\n" | pecl install -o -f redis &&  rm -rf /tmp/pear &&  docker-php-ext-enable redis

RUN docker-php-ext-install zip

#RUN rm -r /var/lib/apt/lists/*

RUN usermod -u 1000 www-data

RUN ln -s /app /var/www

WORKDIR /app

RUN usermod -u 1000 www-data

CMD ["php-fpm"]

EXPOSE 9000
