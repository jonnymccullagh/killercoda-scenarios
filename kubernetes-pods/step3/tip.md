

```
kubectl run notifications --image=redis:alpine --labels='tier=cache,release=stable'
```
Check with:
```
kubectl get pod notifications -o json | jq .metadata.labels
```
