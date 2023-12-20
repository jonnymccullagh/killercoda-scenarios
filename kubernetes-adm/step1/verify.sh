#!/usr/bin/env bash

kubectl get deployment campaign

LINES=$(cat /etc/kubernetes/manifests/kube-controller-manager.yaml | grep "registry.k8s.io/kube-controller-manager:v1.28.1" | wc -l)

if [[ $LINES -eq 1 ]]; then
  echo "Image path fixed"
  exit 0
else
  echo "Image path not fixed"
  exit 1
fi
