#!/bin/bash
set -e

CLUSTER_ID=$(terraform output cluster_id) && \
echo "Setting cluster-id:$CLUSTER_ID" && \
curl -X GET \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer ${DO_TOKEN}" \
    "https://api.digitalocean.com/v2/kubernetes/clusters/${CLUSTER_ID}/kubeconfig" \
> cluster_config
