set -e

export KUBECONFIG="$(pwd)/cluster_config"

helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
helm install --wait nginx-ingress nginx-stable/nginx-ingress