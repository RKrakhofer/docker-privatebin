FROM php:8.4-apache

RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/PrivateBin/PrivateBin.git /var/www/html \
    && chown -R www-data:www-data /var/www/html

COPY config/conf.php /var/www/html/cfg/conf.php

EXPOSE 80
