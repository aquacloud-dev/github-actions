#!/bin/bash

# Usage
# ./update-commit-author.sh <sha> <owner/repo> <gh_token>
API_BASE_URL="https://api.github.com"

HASH="$1"
REPO="$2"
TOKEN="$3"

if [ -z "$HASH" ]; then
	echo "Missing commit hash"
	exit 1
fi

if [ -z "$REPO" ]; then
	echo "Missing repo"
	exit 1
fi

if [ -z "$TOKEN" ]; then
	echo "Missing token"
	exit 1
fi

CURRENT_USER=$(curl -s -H "Authorization: Bearer $TOKEN" "https://api.github.com/user")
CURRENT_USER_EMAIL=$(echo "$CURRENT_USER" | jq -r '.email')
CURRENT_USER_NAME=$(echo "$CURRENT_USER" | jq -r '.name')

REPO_OWNER=$(echo "$REPO" | cut -d'/' -f1)
REPO_NAME=$(echo "$REPO" | cut -d'/' -f2)

# Get Commit
COMMIT=$(
	curl -s -H "Authorization: Bearer $TOKEN" \
		"$API_BASE_URL/repos/$REPO_OWNER/$REPO_NAME/git/commmits/$HASH"
)

# Extract Existing Infos
OLD_COMMIT_AUTHOR_NAME=$(echo "$COMMIT" | jq -r '.author.name')
OLD_COMMIT_AUTHOR_EMAIL=$(echo "$COMMIT" | jq -r '.author.email')

# Create a new commit object with the updated user infos
NEW_COMMIT=$(
	echo "$COMMIT" | jq \
		--arg name "$CURRENT_USER_NAME" \
		--arg email "$CURRENT_USER_EMAIL" \
		'.author.name = $name | .author.email = $email'
)

# Update the commit
curl -s -H "Authorization: Bearer $TOKEN" \
	-X PATCH -d "$NEW_COMMIT" \
	"$API_BASE_URL/repos/$REPO_OWNER/$REPO_NAME/git/commmits/$HASH"
