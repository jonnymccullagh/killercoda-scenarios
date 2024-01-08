
HR have contacted us again and they need a service account and ClusterRole for reading pods.
They want the service account to be named `pod-reader` with get,list and watch permissions on pods in the `hr` namespace.

The cluster role should be named `pod-reader-role`. Bind the new cluster role to the service account 'pod-reader' limited to the `hr` namespace and named `pod-reader-role-binding`.

<details>
  <summary>Tip</summary>
  <p>
  Official Docs: <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/">here</a>
  Consider using:<br>
  <code>kubectl create sa --help</code><br>
    and <br>
  <code>kubectl create clusterrole --help</code><br>
  and<br>
  <code>kubectl create clusterrolebinding --help</code><br>
  </p>
</details>

<details>
  <summary>Solution</summary>
  <p>
  <code>
    kubectl create sa pod-reader --namespace hr

    kubectl create clusterrole pod-reader-role --verb=get,list,watch --resource=Pod

    kubectl create clusterrolebinding pod-reader-role-binding --clusterrole=pod-reader-role --serviceaccount=hr:pod-reader
  </code>
  </p>
</details>