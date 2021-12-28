#!/bin/bash

sudo apt install nfs-kernel-server
sudo mkdir /mnt/contstore
sudo chown nobody:nogroup /mnt/contstore/
sudo chmod -R 777 /mnt/contstore/
