#!/bin/bash
ansible-galaxy install -r requirements.yml
ansible-playbook playbooks/all.yml --ask-become-pass
