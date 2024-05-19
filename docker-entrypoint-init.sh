#!/bin/bash -e

rm -rf "$HOME/.config/deluge/ipc" || true
mkdir -p "/tmp/deluge-gtk-ipc"
ln -s "/tmp/deluge-gtk-ipc" "$HOME/.config/deluge/ipc"
