#!/usr/bin/env bash

kubectl get pod campaign

IMAGE_NAME=$(kubectl describe pod campaign | grep 'Image:' | sed 's/Image://' | tr -d ' ')

if [[ $IMAGE_NAME == "nginx:alpine" ]]; then
  echo "Image set correctly"
  exit 0
else
  echo "Image not set correctly"
  exit 1
fi
