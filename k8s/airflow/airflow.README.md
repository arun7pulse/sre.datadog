cd ~/Desktop/workspace/sre.datadog/k8s/airflow
kubectl cp ./dags airflow-scheduler-f69448445-cwtmv:/opt/airflow/

kubectl cp ./dags airflow-webserver-7dd4fbf75-f4f9n:/opt/airflow/

kubectl exec -it service/airflow-webserver -- /bin/bash
kubectl exec -it service/airflow-webserver -- /bin/ls -lrt dags/*
kubectl exec -it service/airflow-worker -- /bin/ls -lrt dags/*
kubectl exec -it service/airflow-triggerer -- /bin/ls -lrt dags/*
kubectl exec -it pod/airflow-scheduler-f69448445-cwtmv -- /bin/ls -lrt dags/*

kubectl rollout restart deployment airflow
