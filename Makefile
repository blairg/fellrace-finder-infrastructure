all: create_cluster get_kube_config install_helm install_nginx_ingress install_prometheus
	@echo "finished"

create_cluster:
	@echo "Creating cluster"
	sh ./scripts/create_cluster.sh
	@echo "Created cluster"

get_kube_config:
	sh ./scripts/get_kube_config.sh
	@echo "Got Kube Config"

destroy_cluster: 
	@echo "Destroying cluster"
	sh ./scripts/destroy_cluster.sh
	@echo "Destroyed cluster"

install_helm: 
	@echo "Installing Helm"
	sh ./scripts/install_helm.sh
	@echo "Installed Helm"

install_nginx_ingress: 
	@echo "Installing NGINX Ingress Controller"
	sh ./scripts/install_nginx_ingress.sh
	@echo "Installed NGINX Ingress Controller"

install_prometheus: 
	@echo "Installing Prometheus"
	sh ./scripts/install_prometheus.sh
	@echo "Installed Prometheus"