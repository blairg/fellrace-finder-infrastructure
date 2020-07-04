set -e

helm install --generate-name --create-namespace --namespace monitoring stable/prometheus-operator  | 1>&2 echo "Prometheus already installed"