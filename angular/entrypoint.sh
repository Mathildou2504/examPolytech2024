#!/bin/sh

sed -i 's|{{ JAVA_URL }}|'"$JAVA_URL"'|g' /usr/share/nginx/html/*.js

exec "$@"
