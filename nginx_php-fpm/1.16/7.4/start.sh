#!/bin/bash

/bin/sh -c "php-fpm -D --pid /opt/bitnami/php/tmp/php-fpm.pid -y /opt/bitnami/php/etc/php-fpm.conf"
/bin/sh -c "/opt/bitnami/scripts/nginx/run.sh"
