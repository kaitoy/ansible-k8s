#!/bin/sh

set -ue

export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_SSH_ARGS="-o ControlMaster=no -o ControlPersist=60s"
export ANSIBLE_PIPELINING=True
export ANSIBLE_TIMEOUT=1800
ansible-playbook -vv -e extra_vars.yml -i $1 $2
