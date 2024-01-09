#!/bin/bash

set -e

env

if [[ -n "$1" ]]; then
    exec "$@"
else
    composer install
    docker-php-ext-install pdo pdo_mysql
    wait-for-it db:3306 -t 100
    yes | php artisan migrate
    chown -R www-data:www-data storage
    exec apache2-foreground
fi
