Create a snapshot of the existing etcd service running on the control plane at https://127.0.0.1:2379
Saving the snapshot to /tmp/etcd-qui9Sha5.db

<details>
  <summary>Tip</summary>
  <p>
  The values for the certificates can be obtained from the conf file /etc/kubernetes/manifests/etcd.yaml
  </p>
</details>
<details>
  <summary>Solution</summary>
  <p>
  </p>
  <code>
ETCD_API=3 etcdctl --cert="" cacert="" key="" snapshot save /tmp/etcd-qui9Sha5.db
  </code>
</details>
