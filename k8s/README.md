# Kubernetes 

``` kubectl get pods```


kubectl cluster-info

kubectl get nodes 

kubectl get namespaces 

kubectl get secrets 

kubectl get configmap 

## Commands. 


## UPgrade the deployement 
```
helm upgrade -f datadog-values.yaml datadog-agent datadog/datadog
```
## Restart the deployements 


## Upgrade



## DataDog Install 
### DataDog Helm Install 

```
helm repo add datadog https://helm.datadoghq.com
helm repo update
kubectl create secret generic datadog-secret --from-literal api-key=095d1c1bc8907297e6c4925bd65f0bc6
```



