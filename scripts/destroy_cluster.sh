set -e

helm uninstall nginx-ingress
terraform destroy -var "do_token=${DO_TOKEN}" -auto-approve