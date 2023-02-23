FROM php:7.4.4-cli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY src /home/src

WORKDIR /home/src
