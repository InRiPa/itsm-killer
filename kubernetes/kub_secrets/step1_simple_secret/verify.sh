#!/bin/bash

set -e

TEST=$(kubectl get secrets app-user-creds -o jsonpath={.data})

echo $TEST | grep "UFdEJGZyb20/YWRtaW49"
echo $TEST | grep "YWRtaW4"