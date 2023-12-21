Create a 'static pod' on the `controlpane` node with the name 'static' and image `nginx:alpine`

- Pod Name: static
- Image: nginx:alpine

<sub>Question 4 of 4</sub>
<details>
  <summary>Solution</summary>
  <p>
  <code>kubectl run static --image=nginx:alpine -o yaml --dry-run=client > /etc/kubernetes/manifests/static.yaml</code>
  </p>
</details>
