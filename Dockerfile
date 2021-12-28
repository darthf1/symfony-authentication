FROM php:8.1-fpm-alpine

COPY --from=composer:2.2.1@sha256:bb0e83f7e2ada9320fa3cd82f0bcaaeb4091e01472b94bf780649b9c43cbdb0e /usr/bin/composer /usr/bin/composer
RUN chmod +x /usr/bin/composer

WORKDIR /home/www/app

COPY composer.json composer.lock symfony.lock ./
RUN set -eux; \
    composer install --prefer-dist --no-dev --no-scripts --no-progress; \
    composer clear-cache;

COPY . ./

CMD ["bin/console"]