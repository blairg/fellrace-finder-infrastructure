provider "helm" {
  install_tiller = true
  service_account = "tiller"
  namespace = "kube-system"

	kubernetes {
    host                   = "${var.cluster_host}"
    client_certificate     = "${var.cluster_client_certificate}"
    client_key             = "${var.cluster_client_key}"
    cluster_ca_certificate = "${var.cluster_ca_certificate}"
    config_context         = "${var.cluster_config}"
  }
}