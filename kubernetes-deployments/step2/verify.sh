#!/usr/bin/env bash

kubectl get sa pod-reader -n hr
kubectl get clusterrole -n hr pod-reader-role
kubectl get clusterrolebinding -n hr pod-reader-role-binding