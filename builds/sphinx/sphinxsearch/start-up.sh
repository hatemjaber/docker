#!/bin/sh
set -e


#changing directories to bin...
cd /usr/local/sphinx/bin
#indexing your data...
./indexer --rotate --all
#activating search daemon...
./searchd

exec "$@"
