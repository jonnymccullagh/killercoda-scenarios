#!/usr/bin/env bash

kubectl get pv hr-pv
kubectl get pvc hr-pvc

LINES=$(kubectl describe pv hr-pv | grep "Capacity" | grep "200Mi" | wc -l)
LINES_2=$(kubectl describe pvc hr-pvc | grep "Capacity" | grep "200Mi"  | wc -l )


if [[ $LINES -eq 1 ]] && [[ $LINES_2 -eq 1 ]] ; then
  echo "OK: Changes found"
  exit 0
else
  echo "WARN: Volume NOT found in pod"
  exit 1
fi
