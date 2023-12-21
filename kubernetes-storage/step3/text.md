
Next create a pod named `hr-web` that uses the image `redis:alpine` and mount the persistent volume claim `hr-pvc` into the container at `/var/redis`.

Official Docs [here](https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/)

<sub>Question 3 of 4</sub>
<details>
  <summary>Solution</summary>
<p>Create pod.yaml with: 
  <code>
apiVersion: v1
kind: Pod
metadata:
  name: hr-web
spec:
  volumes:
    - name: hr-data
      persistentVolumeClaim:
        claimName: hr-pvc
  containers:
    - name: hr-web
      image: redis
      volumeMounts:
        - mountPath: "/var/redis"
          name: hr-data
  </code>
and apply with:
<code>
kubectl apply -f pod.yaml
</code>
  </p>

</details>