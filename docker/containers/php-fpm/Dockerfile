FROM php:7.1-fpm

#RUN set -ex \
#  && apk --no-cache add \
#    postgresql-dev

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client php7.1-pgsql

RUN docker-php-ext-install mcrypt pdo_mysql pdo_pgsql

WORKDIR /var/www

# php7.1-pgsql
# php-pgsql

# pdo
# pdo_pgsql