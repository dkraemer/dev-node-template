#!/bin/bash
set -o nounset
set -o errexit
set -o xtrace

cp -fv .devcontainer/.bashrc /root/

export DEBIAN_FRONTEND=noninteractive
apt-get update
#
# Prevent 'apt-utils not installed' messages
apt-get install -y apt-utils
#
# Install & setup packages for interactive mode
apt-get install -y dialog locales
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
#
# Upgrade packages and clean-up
apt-get upgrade -y
apt-get autoremove -y --purge
apt-get clean -y
rm -rf /var/lib/apt/lists/*
