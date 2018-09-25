FROM php:7.1-cli

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client

#RUN set -ex \
#  && apk --no-cache add \
#    postgresql-dev

RUN docker-php-ext-install mcrypt pcntl pdo_mysql php7.1-pgsql

WORKDIR /var/www

# php7.1-pgsql
# php-pgsql

# pdo
# pdo_pgsql