#!/bin/sh

set -euo pipefail

if [ ! -d /data ]; then
  mkdir /data
fi

cp /tmp/syncserver.ini /syncserver/syncserver.ini
cd /syncserver && make serve


