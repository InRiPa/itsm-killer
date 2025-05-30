#!/bin/bash

set -e

COUNT=$(kubectl get deployments --ignore-not-found | wc -l)

if [ $COUNT -eq 0 ]; then
    exit 0
else 
    exit 1
fi
