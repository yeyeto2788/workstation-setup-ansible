#!/usr/bin/bash
#apt update 
#apt upgrade -y
#apt install python3 python3-pip curl git -y
#cd ~
#git clone https://github.com/yeyeto2788/workstation-setup-ansible.git
#cd ./workstation-setup-ansible
#pip3 install ansible
ansible-playbook main.yaml -K
