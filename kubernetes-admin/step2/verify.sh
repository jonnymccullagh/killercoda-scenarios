#!/usr/bin/env bash

kubectl get -n kube-system sa metrics-server

NUM_PODS=$(kubectl get pods -n kube-system -lk8s-app=metrics-server --no-headers=true | grep Running | wc -l)

if [[ $NUM_PODS -eq 1 ]]; then
  echo "OK: Metrics pod present"
  exit 0
else
  echo "WARN: Metrics pod not present"
  exit 1
fi
