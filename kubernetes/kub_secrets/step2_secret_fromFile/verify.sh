#!/bin/bash

set -e

TEST=$(kubectl get secrets app-file-creds -o jsonpath={.data})

echo $TEST | grep "aXRzbV9wYXNzd29yZA=="
echo $TEST | grep "aXRzbV91c2Vy"