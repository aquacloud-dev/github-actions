#!/bin/bash -l

if [ -z "$1" ]; then
	standard-version -s
else
	standard-version -p "$1" -s
fi
