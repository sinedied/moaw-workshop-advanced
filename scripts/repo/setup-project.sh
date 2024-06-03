#!/usr/bin/env bash
##############################################################################
# Usage: ./setup-project.sh
# Setup the project for the workshop.
#
# This is a one-time operation to prepare the project for the
# workshop, where you usually removes files and folders that are
# not necessary for the workshop or to be completed by the
# attendees.
##############################################################################

set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/../.."

# Check if the git directory is clean
if [[ -n $(git status --porcelain) ]]; then
  echo "Your working directory has uncommitted changes."
  echo "Please commit or stash your changes before running this script."
  exit 1
fi

echo "Preparing project..."

##############################################################################
# TODO: Prepare the project for the workshop
##############################################################################

mkdir -p src
echo -e "console.log('hello world!')" > src/index.js

npm init -y
npm install express

rm -rf scripts/repo
rm -rf package-lock.json
rm -rf .github
rm -rf docs
rm -rf TODO CODE_OF_CONDUCT.md SECURITY.md SUPPORT.md | true

##############################################################################

git add .
git commit -m "chore: complete project setup"

echo "Done."
