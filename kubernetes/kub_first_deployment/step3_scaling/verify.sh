#!/bin/bash

set -e

available=$(kubectl get deployment "itsm-demo-deployment" \
  -o jsonpath='{.status.availableReplicas}' 2>/dev/null)

if ((available > 1)); then
  exit 0
else
  exit 1
fi

