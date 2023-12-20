
Create a persistent volume named `hr-pv` with a size of `100Mi` and with `ReadWriteOnce` for read-write by a single node.
The volume should store on the host node at the path `/mnt/data`.

After creating the volume create a persistent volume claim named `hr-pvc`, then mount the volume into the container named `hr-web` at `/var/redis`.


<details>
  <summary>Tip</summary>
  <p>
  Official Docs [here](https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/)
  <code>
  kubectl get all -n kube-system
  </code>
  </p>
</details>