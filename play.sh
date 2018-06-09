#!/bin/sh

set -ue

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -vv -i $1 k8s_single_node_cluster.yml
