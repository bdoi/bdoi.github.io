#!/bin/bash

function buildAndDeploy() {
  git stash
  git checkout master
  cp -r _site/* .
  git add -A
  git commit -m "BDOI deploy"
  git push origin master
  git checkout sources
  git stash pop
}

bundle exec jekyll build
if [ $? -eq 0 ]; then
  buildAndDeploy
else
  echo "Install ruby and jekyll"
fi