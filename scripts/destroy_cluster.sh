set -e

helm uninstall nginx
terraform destroy -var "do_token=${DO_TOKEN}" -auto-approve