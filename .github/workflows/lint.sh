#!/bin/bash

set -e -x

for dir in */; do
	if [ -d "$dir" ]; then
		printf "Linting on %s/action.yml" "$dir"

		cd "$dir" || exit

		action-validator action.yml

		cd ..
	fi
done
