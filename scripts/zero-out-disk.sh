#!/bin/bash

echo 'Clearing APT cache...'
apt-get cleanapt-get clean

echo 'Zeroing device to make space...'
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
sync
