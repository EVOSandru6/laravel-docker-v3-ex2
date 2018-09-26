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

WORKDIR /var/www
