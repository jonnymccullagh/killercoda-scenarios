#!/usr/bin/env bash

kubectl get pod hr-web

LINES=$(kubectl describe pod hr-web | grep -A4 "Mounts:" | grep "/var/redis" | wc -l)

if [[ $LINES -eq 1 ]]; then
  echo "OK: Changes found"
  exit 0
else
  echo "WARN: Volume NOT found in pod"
  exit 1
fi
