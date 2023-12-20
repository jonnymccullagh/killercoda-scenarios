#!/usr/bin/env bash

sed -i 's/registry.k8s.io/kube-controller-manager:v1.28.1/registry.k8s.io/kube-controller-maaaaaanager:v1.28.1"/' /etc/kubernetes/manifests/kube-controller-manager.yaml
sleep 5
kubectl run campaign --image=nginx:alpine --replicas=3
