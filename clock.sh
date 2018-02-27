#!/usr/bin/env bash

### Floating Clock ###
### run ./clock.sh &
######################

cols=`tput cols`

touch /tmp/tclock.run
while [ -e /tmp/tclock.run ]; do
  tput sc
  tput cup 0 $((cols - 13))
  printf " $(date +%r) "
  tput rc
  sleep 1
done
