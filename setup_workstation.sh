#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install python3 python3-pip curl git -y
cd ~
git clone https://github.com/yeyeto2788/workstation-setup-ansible.git
cd ./workstation-setup-ansible
sudo pip3 install ansible
ansible-galaxy install --roles-path ./roles -r ./requirements.yaml
ansible-playbook main.yaml -K

read -rsn1 -p "Press [ENTER] to terminate and delete files."
echo
cd ~
rm -rf ./workstation-setup-ansible
exit 0
