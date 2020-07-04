#!/bin/bash
set -e

sudo snap install doctl
doctl auth init -t $DO_TOKEN
doctl kubernetes cluster kubeconfig save bgtest-cluster