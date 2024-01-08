
HR have contacted us again saying they need more storage space.
Use `kubectl edit` or `kubectl patch` to expand the storage to a capacity of `200Mi`.<br>
Record the change.

<sub>Question 4 of 4</sub>
<details>
  <summary>Solution</summary>
  <p>

  <code>
  kubectl edit pv hr-pv --record
  kubectl edit pvc hr-pvc --record
  </code>
  </p>
</details>