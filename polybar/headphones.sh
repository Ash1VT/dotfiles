#!/usr/bin/env bash

headphones=$(pactl list sinks | awk '/Active Port:.*-headphones/')

if [[ ! -z $headphones ]]; then
   echo ""
else
   echo ""
fi
