#!/usr/bin/env bash
# Run some containers for later
kubectl create namespace hr
kubectl run hr1 -n hr --image=busybox --restart=Never -- top
kubectl run hr2 -n hr --image=busybox --restart=Never -- watch ls
kubectl run hr3 -n hr --image=busybox --restart=Never -- watch lscpu
sleep 1

# Break the Controller Manager
sed -i 's#registry.k8s.io/kube-controller-manager:v1.28.1#registry.k8s.io/kube-controller-maaaaaanager:v1.28.1#' /etc/kubernetes/manifests/kube-controller-manager.yaml
sleep 3
kubectl create namespace marketing
kubectl create deployment -n marketing campaign --image=nginx:alpine --replicas=3
