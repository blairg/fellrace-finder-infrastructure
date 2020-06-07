# Google Cloud Storage Backend
# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.do_token}"
}

terraform {
  backend "s3" {
    bucket = "fellrace-finder-infrastructure"
    key    = "terraform.state"
    region = "us-east-1"
    endpoint = "ams3.digitaloceanspaces.com"
    skip_credentials_validation = true
    skip_get_ec2_platforms = true
    skip_requesting_account_id = true
    skip_metadata_api_check = true
  }
}

# Create a Digital Ocean Kubernetes Cluster
module "cluster" {
  source = "./cluster"
}

module "helm" {
  source = "./helm"

  cluster_host = "${module.cluster.cluster_host}"
  cluster_client_certificate = "${module.cluster.cluster_client_certificate}"
  cluster_client_key = "${module.cluster.cluster_client_key}"
  cluster_ca_certificate = "${module.cluster.cluster_ca_certificate}"
  cluster_config = "${module.cluster.cluster_config}"
}