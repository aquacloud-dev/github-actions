#!/bin/bash
# @see https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions
# @see https://github.com/orgs/community/discussions/25939

BRANCH_NAME=${GITHUB_REF##*/}
BRANCH_NAME=${BRANCH_NAME//\//-}

if [ -z "$BRANCH_NAME" ]; then
	echo "::error::Could not retrive branch name"
	exit 1
fi

echo "::notice::BRANCH_NAME=$BRANCH_NAME"

BUILD_NUMBER=$(git tag | sort --version-sort)
BUILD_NUMBER=$(echo "${BUILD_NUMBER}" | grep "$BRANCH_NAME" || true)
BUILD_NUMBER=$(echo "${BUILD_NUMBER}" | tail -n 1 | awk -F. '{n=$2+1 print n}')
BUILD_NUMBER=$(echo "${BUILD_NUMBER}" | xargs echo -n)

echo "::notice::BUILD_NUMBER=${BUILD_NUMBER}"

TAG="${BRANCH_NAME}.${BUILD_NUMBER}"

echo "::notice::TAG=${TAG}"

echo "$TAG"
