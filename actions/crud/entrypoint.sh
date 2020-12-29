#!/bin/bash

set -eu

echo REPO: $INPUT_REPO
echo VERSION: $INPUT_VERSION
echo WORKFLOWS: $INPUT_WORKFLOWS
echo CATALOG: $INPUT_CATALOG

# git clone --branch ${VERSION} ${REPO}
# cd actions # This needs to change... obviously.

# for workflow in $(tr , ' ' <<<${WORKFLOWS}); do 
#   # Install the workflow
#   cp -a ${CATALOG}/${spec}.yml .github/workflows/
# fi