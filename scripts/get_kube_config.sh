#!/bin/bash
set -e

sudo snap install doctl
doctl auth init -t $DO_TOKEN
doctl kubernetes cluster kubeconfig show bgtest-cluster | tee cluster_config > /dev/null

export $KUBECONFIG="$(pwd)/cluster_config"