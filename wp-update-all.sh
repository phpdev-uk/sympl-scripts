#!/bin/bash

WP_SITES=$(/usr/bin/find /srv -name wp-config.php | awk -F/ '{print $3}')

if [ ! -z ${WP_SITES} ]; then
  for site in "${WP_SITES[@]}"
  do
    /bin/bash ${HOME}/bin/wp-update.sh ${site}
  done
fi
