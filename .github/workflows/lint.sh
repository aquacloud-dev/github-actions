#!/bin/bash

set -e -o noglob

for dir in */; do
	if [ -d "$dir" ]; then
		printf "Linting on %s/action.yml" "$dir"

		cd "$dir" || exit

		action-validator action.yml

		cd ..
	fi
done
