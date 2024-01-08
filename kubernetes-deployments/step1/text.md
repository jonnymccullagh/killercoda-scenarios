Create a deployment named `campaign` using the `nginx:alpine` image.

- Name: campaign
- Image: nginx:alpine

<details>
  <summary>Tip</summary>
  <p>
  <code>kubectl create deployment --help</code>
  </p>
</details>
<details>
  <summary>Solution</summary>
  <p>
  <code>kubectl create deployment campaign --image=nginx:alpine</code>
  </p>
</details>