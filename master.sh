#!/bin/bash

sudo systemctl enable kubelet

sudo kubeadm init

mkdir -p $HOME/.kube

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl cluster-info

kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

export KUBE_EDITOR=nano

kubectl get pods --all-namespaces
