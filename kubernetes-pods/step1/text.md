Run a pod named `campaign` using the `nginx:alpine` image.

- Name: campaign
- Image: nginx:alpine

<details>
  <summary>Tip</summary>
  <p>
  Use the `kubectl run` command. Read the help with `kubectl run --help`
  </p>
</details>
<details>
  <summary>Answer</summary>
  <p>
  ```
  kubectl run campaign --image=nginx:alpine
  ```
  </p>
</details>