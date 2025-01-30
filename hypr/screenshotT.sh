#!/bin/sh

grim s.jpeg

imv -f s.jpeg &

sleep 1

pid=$(pidof imv-wayland)

grim -g "$(slurp)" - > s.jpeg

tesseract s.jpeg - | wl-copy

kill "$pid"
