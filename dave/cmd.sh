#!/bin/bash

echo "Running Dave (WebDAV server)..." &
dave &
echo "Running Restic..." &
restic mount /root/mnt

echo "Unmount a folder"
restic unmount /root/mnt
