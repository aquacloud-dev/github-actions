#!/bin/bash

set -e

# List all directories
OUTPUT=""

for d in */; do
	# remove trailing slash
	dir_name=${d%*/}

	# create markdown link
	LINK="[$dir_name](./$dir_name)"

	# printf "- [%s](./%s)\n" "$dir_name" "$dir_name"
	echo "- $LINK"

	# add link to output
	# add newline if not first link
	# echo "$LINK" >>/tmp/links.txt

	# cat /tmp/links.txt
done
