#!/usr/bin/env bash
##############################################################################
# Usage: ./create-packages.sh
# Creates packages for skippable sections of the workshop.
#
# This script will create .tar.gz files for whatever you need, and
# will be made available on the "release" section of the repository.
# It will be updated on every commit to the main branch, by this
# GitHub Actions workflow: .github/workflows/packages.yml
##############################################################################

set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/../.."

target_folder=dist

rm -rf "$target_folder"
mkdir -p "$target_folder"

copyFolder() {
  local src="$1"
  local dest="$target_folder/${2:-}"
  find "$src" -type d -not -path '*node_modules*' -not -path '*/.git' -not -path '*.git/*' -not -path '*/dist' -not -path '*dist/*' -exec mkdir -p '{}' "$dest/{}" ';'
  find "$src" -type f -not -path '*node_modules*' -not -path '*.git/*' -not -path '*dist/*' -not -path '*/.DS_Store' -exec cp -r '{}' "$dest/{}" ';'
}

makeArchive() {
  local src="$1"
  local name="${2:-$src}"
  local archive="$name.tar.gz"
  local cwd="${3:-}"
  echo "Creating $archive..."
  if [[ -n "$cwd" ]]; then
    pushd "$target_folder/$cwd" >/dev/null
    tar -czvf "../$archive" "$src"
    popd
    rm -rf "$target_folder/${cwd:?}"
  else
    pushd "$target_folder/$cwd" >/dev/null
    tar -czvf "$archive" "$src"
    popd
    rm -rf "$target_folder/${src:?}"
  fi
}

##############################################################################
# TODO: Create as many packages as you need
##############################################################################

echo "Creating solution package..."
copyFolder . solution

rm -rf "$target_folder/solution/.azure"
rm -rf "$target_folder/solution/.env"
rm -rf "$target_folder/solution/*.env"
rm -rf "$target_folder/solution/docs"
rm -rf "$target_folder/solution/scripts/repo"
rm -rf "$target_folder/solution/.github"

makeArchive . solution solution
