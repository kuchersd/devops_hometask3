#!/bin/bash
find / -type l
sed -n '/^Character/, /^$/ { /^$/ !p }' /proc/devices
sed -n '/^Block/, /^$/ { /^$/ !p }' /proc/devices
find / -type d -perm -1000 -exec ls -ld {} \;
ln -s /etc/hostname /tmp
adduser testuser
mkhomedir_helper testuser
touch /home/testuser_data && sudo chown testuser:testuser /home/testuser_data