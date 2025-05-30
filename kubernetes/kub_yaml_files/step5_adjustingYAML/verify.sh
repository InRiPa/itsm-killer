#!/bin/bash

set -e

kubectl get service demo-proxy -o jsonpath='{.spec.ports}' | grep 8084
kubectl get deployments demo-deployment -o jsonpath={'.status.availableReplicas'} | grep 2