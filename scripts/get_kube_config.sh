#!/bin/bash
set -e

sudo snap install doctl
doctl auth init -t $DO_TOKEN
sudo snap connect doctl:kube-config
doctl kubernetes cluster kubeconfig save bgtest-cluster