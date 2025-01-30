#!/bin/bash

#!/usr/bin/env bash
sleep 1
pkill -e xdg-desktop-portal-hyprland
pkill xdg-desktop-portal
/usr/libexec/xdg-desktop-portal-hyprland &
sleep 2
/usr/libexec/xdg-desktop-portal &
