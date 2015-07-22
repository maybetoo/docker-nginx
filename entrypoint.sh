#!/bin/bash
set -e

# create log dir
mkdir -p ${NGINX_LOG_DIR}
chmod -R 0755 ${NGINX_LOG_DIR}
chown -R ${NGINX_USER}:root ${NGINX_LOG_DIR}

# create temp dir
mkdir -p ${NGINX_TEMP_DIR}
chown -R root:root ${NGINX_TEMP_DIR}

exec /usr/sbin/nginx -c /etc/nginx/nginx.conf -g "daemon off;"