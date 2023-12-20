#!/usr/bin/env bash

EXIT_STATUS=$(kubectl get pod campaign)

if [[ $EXIT_STATUS ]]; then
  echo "WARN: Pod not deleted"
  exit 1
else
  echo "OK: Pod deleted"
  exit 0
fi
