The DevOps manager has identified that the kubernetes cluster does not have the metrics api server installed. 
You have been tasked with installing it using the recommended manifest:
```
https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```
The manifest needs amended to allow insecure https connections. The extra command line parameter needed for this is:
```
- --kubelet-insecure-tls
```

<details>
  <summary>Solution</summary>
  <p>
  <code>
curl -LO https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

sed -i '/        - --secure-port=4443/a\ \ \ \ \ \ \ \ - --kubelet-insecure-tls' components.yaml

kubectl apply -f components.yaml
  </code>
  </p>
</details>