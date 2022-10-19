# kfp-to-argo-pipeline-example
This repository introduce method of how to release kubeflow pipeline to other cluster that Kubeflow is not installed.

### Usage
```shell
$ bash run-yaml.sh
```

### Requirements
- kubernetes cluster with gpu
  - The ml-training in pipeline-sample must have gpu resource. If use only cpu, pod will be pending.    
    - how to check gpu in your k8s cluster    
    ```kubectl get nodes "-o=custom-columns=NAME:.metadata.name,GPU:.status.allocatable.nvidia\.com/gpu"```
  
### Application

- It can execute without kubeflow since kubeflow pipeline's base is argo workflow. Some resource from kubeflow is need.    
- The `argo_install.yaml` install to your cluster argo pipeline v2.4.3. 
- In `run-yaml.sh` there have some apply information of kubeflow pipeline-runner role, rolebinding, service account.       

```
kubectl apply -f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-role.yaml \
-f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-rolebinding.yaml \ 
-f https://raw.githubusercontent.com/kubeflow/manifests/5b1256f19a728908a7245db7460c3f742b01fb1e/apps/pipeline/upstream/base/pipeline/pipeline-runner-sa.yaml
```

- In `utils/`, `pipeline-sample.yaml` has information about kubeflow pipelines. It made by python package `kfp`.    
- If you apply to your kfp, update your kfp yaml and edited `run-yaml.sh`'s last line.    
