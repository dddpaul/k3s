#!/bin/bash
set -e

# Ignore vendor folder and check file names as well
# Note: ignore "ba" in https://github.com/k3s-io/k3s/blob/4317a91/scripts/provision/vagrant#L54
codespell --skip=.git,./vendor --check-filenames --ignore-words-list=ba

code=$?
if [ $code -ne 0 ]; then
  echo "Error: codespell found one or moe problems!"
  exit $code
fi
