#!/bin/bash

for dir in */; do
	if [ -d "$dir" ]; then
		echo "Generating docs for $dir/action.yml" | sed 's,//,/,g'

		cd "$dir" || exit

		github-actions-autodocs

		cd ..
	fi
done
