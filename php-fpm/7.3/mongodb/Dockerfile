FROM pierreribault/php-fpm:7.3
LABEL maintainer="Pierre Ribault <contact@pierreribault.fr>"
LABEL description="PHP-FPM 7.3 with composer and MongoDB extension"

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    autoconf build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pecl install mongodb \
    && echo "extension=mongodb.so" >> /opt/bitnami/php/etc/php.ini \
    && rm -rf /tmp/pear

USER 1001
