#!/bin/bash

helm repo add metallb https://metallb.github.io/metallb
helm repo update
helm install metallb metallb/metallb -f values.yaml
