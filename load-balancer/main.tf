resource "digitalocean_loadbalancer" "public" {
  name   = "bgtest-cluster-loadbalancer"
  region = "lon1"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = ["${var.cluster_node_ip}"]
}