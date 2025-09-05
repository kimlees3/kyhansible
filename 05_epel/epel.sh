#!/bin/bash

BASEDIR=/home/ansible/ansible/05_epel
cd $BASEDIR

cat <<EOF > ansible.cfg
[defaults]
inventory = ./allhost
[privilege_escalation]
become = true
EOF

cat <<EOF > allhost
ansible1
ansible2
ansible3
ansible4
EOF

ansible-playbook epel.yml
