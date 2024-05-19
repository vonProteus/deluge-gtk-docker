#!/bin/bash -e

./docker-entrypoint-init.sh

/usr/bin/deluge-gtk "$@"

./docker-entrypoint-cleanup.sh
