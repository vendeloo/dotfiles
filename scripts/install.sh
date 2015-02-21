#!/usr/bin/env bash
#
# Run all dotfiles installers.
set -eo pipefail

# run homebrew installer first
"$ZSH/homebrew/install.sh"

# find the installers and run them iteratively
find "$ZSH" -name install.sh | grep -v homebrew | while read installer; do
  sh -c "$installer"
done