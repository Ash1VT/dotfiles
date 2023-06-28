#!/usr/bin/env bash

pulseaudio-ctl mute-input

polybar-msg hook microphone 1
