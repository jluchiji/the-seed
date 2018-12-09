#!/bin/bash
ansible-playbook playbooks/all.yml --ask-become-pass --ask-vault-pass
