#!/usr/bin/env bash

pid=$(hyprctl activewindow | grep -E 'pid:' | grep -oE '[0-9]+')
echo $pid
kill -9 $pid
