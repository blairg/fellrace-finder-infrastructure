import boto3
from botocore.client import Config
import os

# Initialize a session using DigitalOcean Spaces.
session = boto3.session.Session()
access_key = os.environ.get('DO_ACCESS_KEY')
secret_key = os.environ.get('DO_SECRET_KEY')
client = session.client('s3',
                        region_name='ams3',
                        endpoint_url='https://ams3.digitaloceanspaces.com',
                        aws_access_key_id=access_key,
                        aws_secret_access_key=secret_key)

# Upload file
client.put_object(Bucket='fellrace-finder-infrastructure-2',
                  Key='cluster.properties',
                  Body=b'0',
                  ACL='private')