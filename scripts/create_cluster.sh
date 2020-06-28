set -e

terraform init -backend-config="access_key=${DO_ACCESS_KEY}" -backend-config="secret_key=${DO_SECRET_KEY}"
terraform plan -var "do_token=${DO_TOKEN}" -out=tfplan -input=false
terraform apply tfplan