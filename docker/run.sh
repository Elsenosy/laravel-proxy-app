#!/bin/sh

cd /var/www
cp .env.example .env
php artisan key:generate
php artisan cache:clear
php artisan config:clear
php artisan config:cache
php artisan route:cache
php artisan view:cache

/usr/bin/supervisord -c /etc/supervisord.conf

