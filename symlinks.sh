#!/bin/bash

echo "Setting mount symlinks..."
rm -f /home/steam/gmodds/garrysmod/cfg/mount.cfg
ln -s /home/steam/gmod_mount/mount.cfg /home/steam/gmodds/garrysmod/cfg/mount.cfg
rm -f /home/steam/gmodds/garrysmod/cfg/mountdepots.txt
ln -s /home/steam/gmod_mount/mountdepots.txt /home/steam/gmodds/garrysmod/cfg/mountdepots.txt

