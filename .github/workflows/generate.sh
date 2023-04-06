#!/bin/bash

set -e

for dir in */; do
	if [ -d "$dir" ]; then
		printf "Generating docs for %s/action.yml\n" "$dir" | sed 's,//,/,g'

		cd "$dir" || exit

		github-actions-autodocs

		cd ..
	fi
done
