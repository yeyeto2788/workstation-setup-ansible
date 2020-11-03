#!/bin/bash
apt update 
apt upgrade -y
apt install python3 python3-pip curl git -y
cd ~
git clone https://github.com/yeyeto2788/workstation-setup-ansible.git
cd ./workstation-setup-ansible
pip3 install ansible
ansible-playbook main.yaml --syntax-check
#
echo "Press [ENTER] to terminate and delete files."
read -s -N 1 -t 1 key
if [[ $key == $'\x0a' ]];        # if input == ENTER key
then
cd ~ 
rm -rf ./workstation-setup-ansible
exit 0
fi

