#!/bin/sh
set -e

# If the first argument is `-f` or `--some-option`, we know it's a `mvn` command
if [ "${1#-}" != "$1" ]; then
	set -- mvn "$@"
fi

exec "$@"
