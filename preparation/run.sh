#!/bin/sh

ansible-galaxy install mrlesmithjr.netplan
ansible-playbook -i hosts -v playbook.yaml
