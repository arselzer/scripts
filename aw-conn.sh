#!/bin/sh

adb -d forward tcp:4444 localabstract:/adb-hub
adb connect localhost:4444
