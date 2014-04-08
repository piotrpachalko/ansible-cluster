#!/usr/bin/env bash

echo "Change repository mirrors..."

sed -i s/us.archive.ubuntu.com/fi.archive.ubuntu.com/ /etc/apt/sources.list
apt-get update