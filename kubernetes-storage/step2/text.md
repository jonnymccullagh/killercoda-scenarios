Using the persistent volume `hr-pv` create a persistent volume claim named `hr-pvc`.

Official Docs [here](https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/)

<sub>Question 2 of 4</sub>
<details>
  <summary>Solution</summary>
  
<p>Create pvc.yaml with: 
  <code>
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: hr-pvc
spec:
  storageClassName: manual
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 100Mi
  </code>
and apply with:
<code>
kubectl apply -f pvc.yaml
</code>
  </p>

</details>