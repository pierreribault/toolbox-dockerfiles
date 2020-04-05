FROM pierreribault/php-fpm:7.4 AS php-fpm
USER root
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt list --installed | grep '\now' | awk '{print $1}' | sed 's/....$//' > /tmp/apt_list.txt
USER 1001

# https://github.com/bitnami/bitnami-docker-nginx/
FROM pierreribault/nginx:1.16 AS nginx
LABEL maintainer="Pierre Ribault <contact@pierreribault.fr>"
LABEL description="PHP-FPM 7.4 + Nginx with composer"

USER root
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

COPY --from=php-fpm /usr/bin/composer /usr/bin/composer
COPY --from=php-fpm /opt/bitnami/php /opt/bitnami/php
COPY --from=php-fpm /tmp/apt_list.txt /tmp/apt_list.txt
COPY /nginx_php-fpm/1.16/7.4/nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY /nginx_php-fpm/1.16/7.4/start.sh /start.sh

# Pour mongo : autoconf build-essential libmagickwand-dev
RUN apt-get update \
    && apt-get install --no-install-recommends -y $(cat < /tmp/apt_list.txt | tr '\n' ' ') \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf apt_list.txt \
    && chmod +x /start.sh

ENV PATH="/opt/bitnami/php/bin:/opt/bitnami/php/sbin:/opt/bitnami/php/sbin:$PATH"

CMD ["/start.sh"]

USER 1001
