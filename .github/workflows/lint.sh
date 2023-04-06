#!/bin/bash

for dir in */; do
	if [ -d "$dir" ]; then
		echo "Linting on $dir/action.yml" | sed 's,//,/,g'

		cd "$dir" || exit

		action-validator action.yml

		cd ..
	fi
done
