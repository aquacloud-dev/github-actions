#!/bin/sh

# @see https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions
# @see https://github.com/orgs/community/discussions/25939

set -x

git fetch --tags

echo "$(git tag)"

# BRANCH_NAME=${GITHUB_REF##*/}
# BRANCH_NAME=$(echo "$BRANCH_NAME" | sed 's/\//-/g')
#
# if [ -z "$BRANCH_NAME" ]; then
# 	echo "::error::Could not retrive branch name"
# 	exit 1
# fi
#
# echo "::notice::BRANCH_NAME=$BRANCH_NAME"
#
# BUILD_NUMBER=$(git tag | sort --version-sort)
# echo "::debug::BUILD_NUMBER=${BUILD_NUMBER}"
# BUILD_NUMBER=$(echo "${BUILD_NUMBER}" | grep "$BRANCH_NAME" || true)
# echo "::debug::BUILD_NUMBER=${BUILD_NUMBER}"
# BUILD_NUMBER=$(echo "${BUILD_NUMBER}" | tail -n 1 | awk -F. '{n=$2+1 print n}')
# echo "::debug::BUILD_NUMBER=${BUILD_NUMBER}"
# BUILD_NUMBER=$(echo "${BUILD_NUMBER}" | xargs echo -n)
# echo "::debug::BUILD_NUMBER=${BUILD_NUMBER}"
#
# echo "::notice::BUILD_NUMBER=${BUILD_NUMBER}"
#
# TAG="${BRANCH_NAME}.${BUILD_NUMBER}"
#
# echo "::notice::TAG=${TAG}"

# echo "tag=$TAG" >>$GITHUB_OUTPUT
