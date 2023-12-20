#!/usr/bin/env bash

kubectl get pod notifications

RELEASE=$(kubectl get pod notifications -o=jsonpath="{.items[*]}{.metadata.labels.release}")
TIER=$(kubectl get pod notifications -o=jsonpath="{.items[*]}{.metadata.labels.tier}")

if [[ $RELEASE == "stable" ]] && [[ $TIER == "cache" ]] ; then
  echo "Labels set correctly"
  exit 0
else
  echo "Labels not set correctly: $RELEASE $TIER"
  exit 1
fi
