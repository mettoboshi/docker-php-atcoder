FROM php:7.4.4-cli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY src /home/src
COPY config/composer.json /home/src/

ENV PATH $PATH:/home/src/vendor/bin

RUN apt-get update && apt-get install -y zip

WORKDIR /home/src

RUN composer install