#!/bin/bash
cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
mkdir /var/www/html/sites/default/files && chown -R www-data:www-data /var/www/html
/usr/sbin/apachectl -D FOREGROUND

echo 'TERMINADO'