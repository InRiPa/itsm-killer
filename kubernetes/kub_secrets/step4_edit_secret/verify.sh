#!/bin/bash

set -e

kubectl get secret app-user-creds -o jsonpath='{.data.password}' | base64 --decode | grep "AnewPassword!" 