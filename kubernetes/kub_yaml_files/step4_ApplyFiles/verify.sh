#!/bin/bash

set -e

kubectl get service demo-proxy

kubectl get deployments/demo-deployment
