#!/bin/bash

set -e
set -u
set -o pipefail

# Braces around command convert the list returned into an array
WP_SITES=($(/usr/bin/find /srv -name wp-config.php | awk -F/ '{print $3}'))

if [ ${#WP_SITES[@]} -gt 0 ]; then
  for site in "${WP_SITES[@]}"
  do
    /bin/bash ${HOME}/bin/wp-update.sh ${site}
  done
fi
