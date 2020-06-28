set -e

export KUBECONFIG="$(pwd)/cluster_config"

helm install prometheus --create-namespace --namespace monitoring stable/prometheus-operator