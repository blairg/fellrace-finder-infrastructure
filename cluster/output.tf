output "cluster_id" {
	description = "Cluster ID of the newly created Kubernetes cluster"
	value = "${digitalocean_kubernetes_cluster.bgtest-cluster.id}" 
}

output "cluster_host" {
	description = "Endpoint of the newly created Kubernetes cluster"
	value = "${digitalocean_kubernetes_cluster.bgtest-cluster.endpoint}" 
}

output "cluster_client_certificate" {
	description = "Client Certificate of the newly created Kubernetes cluster"
	value = "${base64decode(digitalocean_kubernetes_cluster.bgtest-cluster.kube_config.0.client_certificate)}" 
}

output "cluster_client_key" {
	description = "Client key of the newly created Kubernetes cluster"
	value = "${base64decode(digitalocean_kubernetes_cluster.bgtest-cluster.kube_config.0.client_key)}" 
}

output "cluster_ca_certificate" {
	description = "Ca Certificate of the newly created Kubernetes cluster"
	value = "${base64decode(digitalocean_kubernetes_cluster.bgtest-cluster.kube_config.0.cluster_ca_certificate)}" 
}

output "cluster_config" {
	description = "Kube Config of the newly created Kubernetes cluster"
	value = "${digitalocean_kubernetes_cluster.bgtest-cluster.kube_config.0.raw_config}" 
}

output "cluster_node_ip" {
	description = "Node IP of the node in the cluster"
	value = "${digitalocean_kubernetes_cluster.bgtest-cluster.node_pool.0.nodes.0.droplet_id}" 
}