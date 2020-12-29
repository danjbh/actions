#!/bin/bash

set -eu

echo REPO: $INPUT_REPO
echo VERSION: $INPUT_VERSION
echo WORKFLOWS: $INPUT_WORKFLOWS
echo CATALOG: $INPUT_CATALOG

git clone --branch ${INPUT_VERSION} ${INPUT_REPO} ../actions

for workflow in $(tr , ' ' <<<${INPUT_WORKFLOWS}); do 
  # Install the workflow
  ls -l
  ls -l ../
  cp -a ../actions/${INPUT_CATALOG}/${workflow}.yaml .github/workflows/
done

git commit -a -m "Auto updating Gitflow CRUD workflows to master branch"
git push origin ${GITHUB_REF##*/}