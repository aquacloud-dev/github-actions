#!/bin/bash

set -e

for dir in */; do
	if [ -d "$dir" ]; then
		printf "Linting on %s/action.yml\n" "$dir" | sed 's,//,/,g'

		cd "$dir" || exit

		action-validator action.yml

		cd ..
	fi
done
