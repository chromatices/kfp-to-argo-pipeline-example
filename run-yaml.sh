#!/bin/bash

kubectl create namespace argo-test
kubectl apply -f ./install/argo_install.yaml -n argo-test
kubectl apply -f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-role.yaml
kubectl apply -f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-rolebinding.yaml
kubectl apply -f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-sa.yaml -n argo-test
kubectl create -f ./utils/pipeline-sample.yaml -n argo-test
