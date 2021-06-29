#!/bin/sh

./child.sh &

while :; do
  printf 'main.sh %s\n' "$(date +%s)"
  sleep 1
done
