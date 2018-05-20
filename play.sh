#!/bin/sh

set -ue

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -vv -i production k8s_single_node_cluster.yml
