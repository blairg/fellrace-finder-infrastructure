set -e

export KUBECONFIG="$(pwd)/cluster_config"
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm version
helm repo add stable https://kubernetes-charts.storage.googleapis.com/