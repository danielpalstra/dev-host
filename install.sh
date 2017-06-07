#!/bin/bash

# install ansible

# install required playbook
ansible-galaxy install mongrelion.docker

# run playbook
ansible-playbook -i hosts dev-host.yml
