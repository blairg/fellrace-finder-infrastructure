set -e

helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
helm install nginx nginx-stable/nginx-ingress | 1>&2 echo "NGINX Ingress already installed"
