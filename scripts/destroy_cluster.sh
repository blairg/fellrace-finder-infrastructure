set -e

sudo apt install python3-pip
pip3 install boto3
python3 ./scripts/destroy_cluster_check.py

delete_flag=$(cat cluster.properties)

if [$delete_flag -eq 1]
then
    helm uninstall nginx
    terraform init -backend-config="access_key=${DO_ACCESS_KEY}" -backend-config="secret_key=${DO_SECRET_KEY}"
    terraform destroy -var "do_token=${DO_TOKEN}" -auto-approve
    python3 ./scripts/post_cluster_destruction.py
else
    echo "Cluster not marked for deletion" 1>&2
    exit 64
fi

