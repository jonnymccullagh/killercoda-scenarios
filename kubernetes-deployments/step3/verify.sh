#!/usr/bin/env bash

PODS_AVAILABLE=$(kubectl describe deployment campaign | egrep "^Replicas" | sed 's/Replicas://' | awk -F"|" '{print $4}' | awk '{print $1}')
PODS_DESIRED=$(kubectl describe deployment campaign| egrep "^Replicas" | sed 's/Replicas://' | awk -F"|" '{print $1}' | awk '{print $1}')

if [[ $PODS_DESIRED -eq 3 ]] && [[ $PODS_AVAILABLE -eq 3 ]]; then
  exit 0
else
  exit 1
fi
