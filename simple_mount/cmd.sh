#!/bin/bash

python3 -m http.server --directory /root/mnt 8888 &
restic mount /root/mnt
restic unmount /root/mnt