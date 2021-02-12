#!/usr/bin/env bash

# This script captures the steps required to successfully
# deploy the commvault scaler app and required components.

kubectl create ns cv-system
kubectl apply -f redis -n cv-system
kubectl apply -f prometheus -n cv-system
helm install cv kube-metrics-adapter -n cv-system
kubectl apply -f cv-agent -n cv-system
kubectl apply -f cv-agent-scaler -n cv-system

