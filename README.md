# Workstation setup using Ansible.

## Automated script installation.

```shell
wget -O - https://raw.githubusercontent.com/yeyeto2788/workstation-setup-ansible/main/setup_workstation.sh | bash -s
```

## Execution via `ansible-pull`

```shell
ansible-pull -K --url https://github.com/yeyeto2788/workstation-setup-ansible.git main.yaml
```

## Manual execution.

```shell
git clone https://github.com/yeyeto2788/workstation-setup-ansible.git
cd workstation-setup-ansible
ansible-playbook main.yaml -K
```

## Variables
