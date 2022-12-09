#!/bin/bash

kubectl create namespace argo-test
#kubectl apply -n argo-test -f https://raw.githubusercontent.com/argoproj/argo/v2.4.3/manifests/install.yaml
kubectl apply -n argo-test -f argo_install.yaml
