#!/bin/bash

sudo systemctl start tor

chromium --proxy-server="socks5://localhost:9050" \
  --host-resolver-rules="MAP * 0.0.0.0, EXCLUDE localhost"
