#!/bin/bash

proxy_host=${PROXY_HOST:-"ssh.alexselzer.com"}
proxy_user=${PROXY_USER:-"proxy"}
proxy_port=${PROXY_PORT:-"3128"}

if killall -0 chromium; then
  echo "chromium is already running."
  exit 1
fi

if [[ $(nc -z localhost 3128; echo $?) -eq 1 ]]; then
  echo "proxy off"
  ssh -D $proxy_port -f -N "$proxy_user@$proxy_host"
fi

echo -n "current IP: "
curl "http://ip-api.com/line/?fields=query,city,country"

chromium \
  --proxy-server="socks5://localhost:3128" \
  --host-resolver-rules="MAP * 0.0.0.0, EXCLUDE localhost" \
  http://www.google.at/search?q=ip

