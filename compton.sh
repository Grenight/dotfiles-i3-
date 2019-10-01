#!/usr/bin/env bash

# Terminate compton
killall -q compton

# Wait until the processes have been shut down
wle pgrep $UID -x compton >/dev/null; do sleep 1

# launch compton back
compton --config ~/.config/compton.conf -b
