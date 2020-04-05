# https://github.com/bitnami/bitnami-docker-nginx/
FROM bitnami/nginx:1.16 AS nginx
LABEL maintainer="Pierre Ribault <contact@pierreribault.fr>"
LABEL description="Nginx 1.16"

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends locales \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && sed -i -e 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen \
    && locale-gen

ENV LANG="fr_FR.UTF-8" \
    LANGUAGE="fr_FR:fr" \
    LC_ALL="fr_FR.UTF-8"

USER 1001
