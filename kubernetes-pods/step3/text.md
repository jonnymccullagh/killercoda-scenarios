Run a `notifications` pod using the `redis:alpine` image with labels `tier=cache` and `release=stable`.

- Pod Name: notifications
- Image: redis:alpine
- Label: tier=cache
- Label: release=stable

<details>
  <summary>Tip</summary>
  <p>
  <code>kubectl run --help</code>
  </p>
</details>
<details>
  <summary>Solution</summary>
  <p>
  <code>kubectl run notifications --image=redis:alpine --labels='tier=cache,release=stable'</code>
  </p>
</details>
<details>
  <summary>Verify</summary>
  <p>
  <code>kubectl get pod notifications -o json | jq .metadata.labels</code>
  </p>
</details>