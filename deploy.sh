#!/bin/bash

function PULL() {
    git checkout master
    git pull bdoi master
    git checkout sources
    git pull bdoi sources
    echo "Done! You are at master branch"
}

function PUSH() {
    echo "ORIGIN: $1"
    echo "BRANCH: $2"
    echo "Pushing to $1 $2"
    read -p "Are you sure? " yn
    [ "$yn" != "y" ] && exit 127
    echo "Pushing . . ."
    git push $1 $2
}

function COPY() {
    tar -czf /tmp/bdoi.tar.gz -C ./_site .
    git stash
    git checkout master
    rm -rf ./*
    tar -xzf /tmp/bdoi.tar.gz ./
}

function BUILD() {
    git checkout sources
    docker-compose up -d
    sleep 30
    docker-compose stop
}


if [ "$1" = "push" ]; then
    PUSH origin sources
    PUSH origin master
fi

if [ "$1" = "pull" ]; then
    PULL
fi

if [ "$1" = "build" ]; then
    BUILD
fi

if [ "$1" = "copy" ]; then
    COPY
fi
