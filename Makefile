install_prometheus:
	helm install prometheus stable/prometheus-operator

install_nginx_ingress:
	helm repo add nginx-stable https://helm.nginx.com/stable
	helm repo update
	helm install --wait nginx-ingress nginx-stable/nginx-ingress