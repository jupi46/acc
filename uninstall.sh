#!/system/bin/sh
# remove leftovers

(modId=acc
until [ -d /data/media/0/$modId ]; do sleep 20; done
rm -rf /data/media/0/$modId
exit 0 &) &
exit 0
