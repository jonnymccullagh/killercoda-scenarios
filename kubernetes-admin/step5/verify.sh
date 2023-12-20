if [[ -f /tmp/etcd-qui9Sha5.db ]]; then
  echo "OK: Snapshot file exists"
  exit 0
else
    echo "WARN: Snapshot file does not exist"
    exit 1
fi