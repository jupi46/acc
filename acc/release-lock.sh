#!/system/bin/sh
id=acc
(pid=
set +euo sh 2>/dev/null || :
flock -n 0 || {
  read pid
  kill $pid
  timeout 15 flock 0 || kill -KILL $pid
}) <>$TMPDIR/${id}.lock || :
