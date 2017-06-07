#!/bin/bash

set -x 

echo "Starting installation of all kind of crap to get a development host"
# install ansible

echo "Installing latest ansible"

# install required playbook
ansible-galaxy install mongrelion.docker

# run playbook
ansible-playbook -i hosts dev-host.yml
