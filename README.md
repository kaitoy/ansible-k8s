# Ansible Playbook to setup Kubernetes Cluster

## Prerequisites for Ansible Controller

* Ansible 2.5.x installed
* Python package "netaddr" is installed
* Git installed

## Kubernetes Cluster to setup

* Kubernetes: v1.29.6
    * Single node cluster
    * kubelet,kube-proxy, kube-apiserver, kube-controller-manager, kube-scheduler, and etcd are managed by systemd (i.e. not containerized)
        * kubelet and kube-proxy run as root, and the rest run as non-root
    * Communication between k8s components is encrypted by TLS
    * Authentication by x509 client certificates
    * TLS Bootstrapping
        * Bootstrap token
        * Auto approval for CSRs
    * [Certificate Rotation](https://kubernetes.io/docs/tasks/tls/certificate-rotation/) is enabled
    * etcd 3.5.14
    * [Calico](https://www.tigera.io/project-calico/) 3.28.0
    * [CoreDNS](https://github.com/coredns/coredns) 1.11.1
    * Service cluster IP range: 10.0.0.0/16
    * Cluster CIDR: 10.32.0.0/16
    * [Proxy mode](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies): ipvs
    * Using [KubeletConfiguration](https://kubernetes.io/docs/tasks/administer-cluster/kubelet-config-file/ ), [KubeProxyConfiguration](https://github.com/kubernetes/kube-proxy/blob/master/config/v1alpha1/types.go), and [KubeSchedulerConfiguration](https://kubernetes.io/docs/reference/config-api/kube-scheduler-config.v1/)
* Tools
    * [Helm](https://helm.sh/) 3.15.2

## How to use

```sh
$ su -
# git clone https://github.com/kaitoy/ansible-k8s.git
# cd ansible-k8s
# sh play.sh
```
