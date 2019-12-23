#!/bin/sh

cp -rL /keys/* ~/.ssh/
chmod 600 ~/.ssh/*

rm -r /git/*
git clone -b $GIT_BRANCH $GIT_REPO /git
cd /git

while true; do
    git pull
    sleep $INTERVAL
done