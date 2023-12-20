
The manager has asked you to put the worker node into maintenance. Make sure there are no pods running on the node.

SSH to the worker node and perform an upgrade to version: `1.28.1-00`

Official Docs [here](https://kubernetes.io/docs/tasks/administer-cluster/kubeadm/kubeadm-upgrade/)

<details>
  <summary>Tip</summary>
  <p>
  If it is the future and upgrading/downgrading to v1.28.1 is not possible you can bypass the checking of this question be creating the following file:
  <code>
  touch /tmp/override
  </code>
  </p>
</details>



<details>
  <summary>Solution</summary>
  <p>
  <code>
  apt update
  apt install kubeadm=1.28.1-00 kubelet=1.28.1-00
  kubeadm upgrade plan
  kubeadm upgrade apply v1.28.1
  systemctk restart kubelet
  kubeadm version
  kubectl get nodes
  </code>
  <code>
  kubectl uncordon node01
  </code>
  </p>
</details>