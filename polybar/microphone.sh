#!/usr/bin/env bash

#echo "working"

if [ $(pulseaudio-ctl | grep "Is source muted" | wc -c) -eq 47 ]
then
  echo ""
else
  echo ""
fi
#echo "w"
#polybar-msg action "#microphone-ipc.hook.0"
