#ARG PHP_BASE_IMAGE_VERSION
FROM php:7.1-fpm-alpine

RUN apk --update --virtual build-deps add \
        autoconf \
        make \
        gcc \
        g++ \
        libtool \
        icu-dev \
        curl-dev \
        freetype-dev \
        imagemagick-dev \
        pcre-dev \
        postgresql-dev \
        libmcrypt-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        libxml2-dev && \
    apk add \
        git \
        curl \
        bash \
        bash-completion \
        icu \
        imagemagick \
        pcre \
        freetype \
        libmcrypt \
        libintl \
        libjpeg-turbo \
        libpng \
        libltdl \
        libxml2 \
        mysql-client \
        nodejs-npm \
        postgresql && \
    pecl install \
        apcu \
        imagick \
        mcrypt-1.0.0 && \
    docker-php-ext-configure gd \
        --with-gd \
        --with-freetype-dir=/usr/include/ \
        --with-png-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-configure bcmath && \
    docker-php-ext-install \
        soap \
        zip \
        curl \
        bcmath \
        exif \
        gd \
        iconv \
        intl \
        mbstring \
        opcache \
        pdo_mysql \
        pdo_pgsql && \
    apk del \
        build-deps


#EXPECTED_SIGNATURE="$(wget -q -O - https://composer.github.io/installer.sig)"
#php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
#ACTUAL_SIGNATURE="$(php -r "echo hash_file('SHA384', 'composer-setup.php');")"
#if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
#then
#    >&2 echo 'ERROR: Invalid installer signature'
#    rm composer-setup.php
#    exit 1
#fi
#php composer-setup.php --quiet
#RESULT=$?
#rm composer-setup.php
#exit $RESULT

#RUN $(wget -q -O - https://composer.github.io/installer.sig); \
#    copy('https://getcomposer.org/installer', 'composer-setup.php'); \
#    php composer-setup.php --quiet \
#    rm composer-setup.php

#RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet

#RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
#    php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"  \
#    php composer-setup.php  \
#    php -r "unlink('composer-setup.php');"

WORKDIR /var/www
