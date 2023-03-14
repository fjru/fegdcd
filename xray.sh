#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6adb6d85-fa7b-4abf-a54a-5f9a17b8b951"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

