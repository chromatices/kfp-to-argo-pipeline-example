#!/bin/bash

kubectl delete -f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-role.yaml -f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-rolebinding.yaml -f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-sa.yaml -n argo-test
