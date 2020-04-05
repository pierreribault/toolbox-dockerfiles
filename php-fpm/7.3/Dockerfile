# https://hub.docker.com/_/composer
FROM composer:1.9 AS composer

# https://hub.docker.com/r/bitnami/php-fpm
# https://github.com/bitnami/bitnami-docker-php-fpm
FROM bitnami/php-fpm:7.3 AS php-fpm
LABEL maintainer="Pierre Ribault <contact@pierreribault.fr>"
LABEL description="PHP-FPM 7.3 with composer"

RUN apt-get update \
    && apt-get install -y --no-install-recommends locales \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && sed -i -e 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen \
    && locale-gen

ENV LANG="fr_FR.UTF-8" \
    LANGUAGE="fr_FR:fr" \
    LC_ALL="fr_FR.UTF-8"

COPY --from=composer /usr/bin/composer /usr/bin/composer

USER 1001
