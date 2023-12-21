Run a pod named `campaign` using the `nginx:alpine` image.

- Name: campaign
- Image: nginx:alpine

<sub>Question 1 of 4</sub>

<details>
  <summary>Tip</summary>
  <p>
  Use the <code>kubectl run</code> command. Read the help with <code>kubectl run --help</code>
  </p>
</details>
<details>
  <summary>Answer</summary>
  <p>
    <code>
    kubectl run campaign --image=nginx:alpine
    </code>
  </p>
</details>