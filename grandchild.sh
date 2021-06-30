#!/bin/sh

while :; do
  printf 'grandchild.sh %s\n' "$(date +%s)"
  sleep 1
done
