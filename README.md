# Workstation setup using Ansible.

Easy way to setup each workstation the same way so I can get reproducible workstations when I get a fresh installed Ubuntu :computer:.

## Executing this ansible playbook.

- ### **Automated script installation. :racing_car:**

  ```shell
  wget -q -O - https://raw.githubusercontent.com/yeyeto2788/workstation-setup-ansible/main/setup_workstation.sh | bash
  ```

- ### **Execution via `ansible-pull` :metal:**

  ```shell
  ansible-pull -K --url https://github.com/yeyeto2788/workstation-setup-ansible.git main.yaml
  ```

- ### **Manual execution. :cry:**

  ```shell
  git clone https://github.com/yeyeto2788/workstation-setup-ansible.git
  cd workstation-setup-ansible
  ansible-galaxy install --roles-path ./roles -r requirements.yaml
  ansible-playbook main.yaml -K
  ```

---

## Variables

I tried to document all variables on the [`variables.yaml`](./variables.yaml) file but here you have a quick list of them.

| variable                    | default                                                                                              | type      |
| :-------------------------- | :--------------------------------------------------------------------------------------------------- | :-------- |
| `packages_to_install`       | See [code](https://github.com/yeyeto2788/workstation-setup-ansible/blob/main/variables.yaml#L2-L14)  | `list`    |
| `snaps_to_install`          | See [code](https://github.com/yeyeto2788/workstation-setup-ansible/blob/main/variables.yaml#L17-L21) | `list`    |
| `install_gnome`             | yes                                                                                                  | `boolean` |
| `gnome_packages`            | See [code](https://github.com/yeyeto2788/workstation-setup-ansible/blob/main/variables.yaml#L26-L29) | `list`    |
| `install_vscode_extensions` | yes                                                                                                  | `boolean` |
| `vscode_extensions`         | See [code](https://github.com/yeyeto2788/workstation-setup-ansible/blob/main/variables.yaml#L35-L54) | `list`    |
| `change_desktop_background` | yes                                                                                                  | `boolean` |
| `desktop_color`             | `#a5a5a5`                                                                                            | `string`  |
