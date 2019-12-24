#!/bin/sh

cd /git

while true; do
    git pull
    sleep $INTERVAL
done