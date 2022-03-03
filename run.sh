#!/bin/sh
# ansible-galaxy collection install containers.podman
sudo ansible-playbook ./local.yml -b $1 -u $USER