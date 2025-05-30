#!/bin/bash

set -e

COUNT=$(kubectl get services webshop-srv --no-headers --ignore-not-found | wc -l)

if [ $COUNT -eq 1 ]; then
    exit 0
else 
    exit 1
fi


