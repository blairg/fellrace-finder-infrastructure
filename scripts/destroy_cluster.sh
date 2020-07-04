set -e

helm uninstall nginx
terraform init -backend-config="access_key=${DO_ACCESS_KEY}" -backend-config="secret_key=${DO_SECRET_KEY}"
terraform destroy -var "do_token=${DO_TOKEN}" -auto-approve