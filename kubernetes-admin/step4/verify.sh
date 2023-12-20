#!/usr/bin/env bash

# Allow the user to create an override file to bypass the verification
# In case we cannot upgrade to v1.28.1
if [[ -f /tmp/override ]]; then
  echo "It is the future and an override file exists"
  exit 0
fi

#ssh node01 "kubeadm version | grep 1.28.1-00 | wc -l" > /tmp/kubeadm.txt
VERSION=$(k get node controlplane -o json | jq .status.nodeInfo.kubeletVersion)

if [[ $VERSION == *"v1.28.1"* ]]; then
  echo "Kubelet version is 1.28.1"
  exit 0
else
  echo "Kubelet version is not 1.28.1"
  exit 1
fi

