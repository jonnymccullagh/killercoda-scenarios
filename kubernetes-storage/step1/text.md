
Create a persistent volume named `hr-pv` with a size of `100Mi` and mode `ReadWriteOnce` for read-write by a single node.
The volume should use the host node at the path `/mnt/data`.

Official Docs [here](https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/)

<sub>Question 1 of 4</sub>
<details>
  <summary>Solution</summary>
  <p>Create pv.yaml with: 
  <pre>
apiVersion: v1
kind: PersistentVolume
metadata:
  name: hr-pv
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 100Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/mnt/data"
  </pre>
and apply with:
<code>
kubectl apply -f pv.yaml
</code>
  </p>


</details>