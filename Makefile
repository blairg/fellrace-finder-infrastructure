install_prometheus:
	helm install prometheus stable/prometheus-operator

install_nginx_ingress:
	helm upgrade --install --wait nginx-ingress stable/nginx-ingress