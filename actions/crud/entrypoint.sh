#!/bin/bash

set -eu

echo REPO: $INPUT_REPO
echo VERSION: $INPUT_VERSION
echo WORKFLOWS: $INPUT_WORKFLOWS
echo CATALOG: $INPUT_CATALOG

git clone --branch ${INPUT_VERSION} ${INPUT_REPO} ../actions

for workflow in $(tr , ' ' <<<${INPUT_WORKFLOWS}); do 
  # Install the workflow
  pwd
  ls -l ..
  ls -l ../actions
  cp -a ../actions/${INPUT_CATALOG}/${workflow}.yaml .github/workflows/
done

git add .github/workflows/
git commit -m "Auto updating Gitflow CRUD workflows to master branch"
git fetch origin ${GITHUB_REF##*/}
git push origin ${GITHUB_REF##*/}