#!/bin/bash

REPO_URL=https://github.com/danielpalstra/dev-host.git

set -x 

echo "Starting installation of all kind of crap to get a development host"

echo "Installing dependencies"
sudo apt update -y && \
sudo apt install -y git

# move to tmp to install from
cd /tmp

# First clone te complete git repo
git clone $REPO_URL /tmp/dev-host && \
cd /tmp/dev-host

# install ansible
echo "Installing latest ansible"
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install -y ansible

# install required playbooks
ansible-galaxy install -r requirements.yml

echo "Running ansible playbook"
# run playbook
ansible-playbook -i hosts dev-host.yml

echo "Finished..."
