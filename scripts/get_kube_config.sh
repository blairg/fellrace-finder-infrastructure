#!/bin/bash
set -e

sudo snap install doctl
sudo doctl auth init -t $DO_TOKEN
sudo snap connect doctl:kube-config
sudo doctl kubernetes cluster kubeconfig save bgtest-cluster