# Agent  

- https://docs.datadoghq.com/containers/kubernetes/installation/?tab=helm&site=us

## Details 

- apikey : 095d1c1bc8907297e6c4925bd65f0bc6
- site datadoghq.com

## Install 
```
helm repo add datadog https://helm.datadoghq.com
helm repo update
kubectl create secret generic datadog-secret --from-literal api-key=095d1c1bc8907297e6c4925bd65f0bc6
```

## UPgrade

```
cd ~/Desktop/workspace/sre.datadog/k8s/datadog
helm upgrade -f datadog-values.yaml datadog-agent datadog/datadog
```