# Google Cloud Storage Backend
# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.do_token}"
}

terraform {
  backend "s3" {
    bucket = "fellrace-finder-infrastructure-2"
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