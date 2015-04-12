#!/bin/sh

rsync -aAXv \
  --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","home/as/.cache/mozilla/firefox/*"} \
  /* /run/media/as/ALEX/backup
