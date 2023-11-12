#bin/bash

kubectl apply -f mariadb-pvc.yaml  && kubectl apply -f mariadb-configmap.yaml

kubectl apply -f mariadb-deployment.yaml  && kubectl apply -f mariadb-service.yaml

kubectl apply -f portworx-sharedv4-sc.yaml

kubectl apply -f wordpress-pvc.yaml  && kubectl apply -f wordpress-configmap.yaml

kubectl apply -f wordpress-deployment.yaml  && kubectl apply -f wordpress-service.yaml

kubectl apply -f nginx-pvc.yaml  && kubectl apply -f nginx-configmap.yaml

kubectl apply -f nginx-deployment.yaml  && kubectl apply -f nginx-service.yaml

kubectl get pods && kubectl get service 
