With the cluster fixed you have been asked to check the pods in the `hr` namespace.

HR have asked if you can get a list of their pods ordered by CPU usage and place the results in a file at `/tmp/cpu.txt`

<details>
  <summary>Tip</summary>
  <p>
  <code>
  kubectl top -n hr --sort-by=cpu > /tmp/cpu.txt
  </code>
  </p>
</details>