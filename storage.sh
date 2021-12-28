#!/bin/bash

helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
helm install wcra-storage nfs-subdir-external-provisioner/nfs-subdir-external-provisioner --set nfs.server=YOUR-NFS-SERVER-IP --set nfs.path=/mnt/contstore
