#!/usr/bin/env bash

kubectl get pv hr-pv
kubectl get pvc hr-pvc
kubectl get pod hr-web

LINES=$()

if [[ $LINES -eq 1 ]]; then
  echo "Image path fixed"
  exit 0
else
  echo "Image path not fixed"
  exit 1
fi
