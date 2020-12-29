#!/bin/bash

set -eu

echo REPO: $INPUT_REPO
echo VERSION: $INPUT_VERSION
echo WORKFLOWS: $INPUT_WORKFLOWS
echo CATALOG: $INPUT_CATALOG

git clone --branch ${INPUT_VERSION} ${INPUT_REPO}
cd actions # This needs to change... obviously.

for workflow in $(tr , ' ' <<<${INPUT_WORKFLOWS}); do 
  # Install the workflow
  ls -l
  ls -l ../
  cp -a ${INPUT_CATALOG}/${workflow}.yaml ../.github/workflows/
done