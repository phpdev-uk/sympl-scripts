#!/bin/bash

set -e
set -u
set -o pipefail

readonly WP_SITE=$1
readonly SITE_PATH=/srv/${WP_SITE}/public/htdocs

if [ ! -d ${SITE_PATH} ]; then
  echo "Site path does not exist: ${SITE_PATH}"
  exit 1
fi

echo "Verifying checksums for ${WP_SITE}"
/usr/bin/php ${HOME}/bin/wp-cli.phar core verify-checksums --path=${SITE_PATH}

echo "Updating core, plugins and themes for ${WP_SITE}"
/usr/bin/php ${HOME}/bin/wp-cli.phar core update --path=${SITE_PATH}
/usr/bin/php ${HOME}/bin/wp-cli.phar plugin update --all --path=${SITE_PATH}
/usr/bin/php ${HOME}/bin/wp-cli.phar theme update --all --path=${SITE_PATH}
