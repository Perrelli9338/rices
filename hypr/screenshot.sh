#!/bin/sh

grim s.jpeg

imv -f s.jpeg &

sleep 1

pid=$(pidof imv-wayland)

grim -g "$(slurp)" - | wl-copy

kill "$pid"
