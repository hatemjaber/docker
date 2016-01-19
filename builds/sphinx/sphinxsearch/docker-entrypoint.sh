#!/bin/sh
set -e

target=/usr/local/sphinx/etc

# check if directory exists
if [ -d "$target" ]; then
	# check if we have files
	if find "$target" -mindepth 1 -print -quit | grep -q .; then
		# no files don't do anything
		# we may use this if condition for something else later
		echo not empty, don\'t do anything...
	else
		# we don't have any files, let's copy the
		# files from etc and var to the right locations
		cp -avr /sphinx/etc/* /usr/local/sphinx/etc && cp -avr /sphinx/var/* /usr/local/sphinx/var
	fi
else
	# directory doesn't exist, we will have to do something here
	echo need to creates the directory...
fi

exec "$@"
