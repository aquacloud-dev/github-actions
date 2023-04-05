#!/bin/bash
# @see https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions
# @see https://github.com/orgs/community/discussions/25939

set -x

BRANCH_NAME=${GITHUB_REF##*/}
BRANCH_NAME=${BRANCH_NAME//\//-}

echo "::notice::BRANCH_NAME=${BRANCH_NAME}"

BUILD_NUMBER=$(git tag | sort --version-sort | grep "$BRANCH_NAME" | tail -n 1 | awk -F. '{print $2}')
BUILD_NUMBER=$(echo "${BUILD_NUMBER}" | xargs echo -n)

echo "::notice::BUILD_NUMBER=${BUILD_NUMBER}"

if [ -z "$BUILD_NUMBER" ]; then
	BUILD_NUMBER=1
else
	BUILD_NUMBER=$((BUILD_NUMBER + 1))
fi

TAG="$BRANCH_NAME.$BUILD_NUMBER"
echo "::notice::TAG=${TAG}"

echo "tag=$TAG" >>$GITHUB_OUTPUT
