#!/bin/bash

chmod -R 777 /var/lib/mysql
/docker-entrypoint.sh "$@"