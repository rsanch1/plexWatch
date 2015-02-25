#!/bin/bash

# Does the user want the latest version
if [ -z "$EDGE" ]; then
  echo "Bleeding edge not requested"
else
  apt-get install -qy git
  rm -rf /var/www/html/plexWatch
  git clone https://github.com/Gyran/PlexWWWatch.git /var/www/html/plexWatch
  chown -R www-data:www-data /var/www/html/plexWatch
  ln -s /plexWatch/config.php /var/www/html/plexWatch/config/config.php
fi
