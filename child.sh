#!/bin/sh

while :; do
  printf 'child.sh %s\n' "$(date +%s)"
  sleep 1
done
