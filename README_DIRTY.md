#### dirty node

## deprecated for me
* FROM php:7.1-fpm
* FROM php:7.1-cli

## everywhere
* FROM php:7.1-fpm-alpine 
* full RUN script with dependencies

* RUN echo "deb http://ftp.de.debian.org/debian stretch main" >> /etc/apt/sources.list;
* RUN set -ex \
    *  && apk --no-cache add \
    *    postgresql-dev

* RUN set -ex \
*     && apt-add-repository ppa:ondrej/php \
*     && echo "deb http://ftp.de.debian.org/debian stretch main" >> /etc/apt/sources.list \
*     && apt-get update \
*     && apt-get install -y php-pgsql

* php7.1-pgsql
* E: Unable to locate package php7.1-pgsql
* E: Couldn't find any package by glob 'php7.1-pgsql'
* E: Couldn't find any package by regex 'php7.1-pgsql'

* php-pgsql
* E: Package 'php-pgsql' has no installation candidate

* RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client;
    * postgresql-client
    * php-pgsql
    * php7.1-pgsql

* RUN docker-php-ext-install mcrypt pcntl pdo pdo_mysql;
    * pdo_pgsql
    * php7.1-pgsql
    * php-pgsql