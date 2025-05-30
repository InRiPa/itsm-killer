#!/bin/bash

kubectl get secrets app-user-creds > /dev/null 2>&1

if [ $? -eq 1 ]; then
    exit 0
else 
    exit 1
fi