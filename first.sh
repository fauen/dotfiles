#!/bin/bash

# This is basically the script I use when trying out everything
# The point of it is setting up the start of a DigitalOcean machine

useradd -mG sudo fauen
mkdir /home/fauen/.ssh
cp .ssh/authorized_keys /home/fauen/.ssh/
chown -R fauen:fauen /home/fauen/.ssh/
apt install git
