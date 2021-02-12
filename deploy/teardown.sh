#!/usr/bin/env bash

# This script captures the steps required to successfully
# clean the commvault scaler app and dependent components deployed by it.

kubectl delete -f dependencies/namespaces.yaml
