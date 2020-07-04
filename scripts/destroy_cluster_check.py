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

# Download file
client.download_file('fellrace-finder-infrastructure-2',
                     'cluster.properties',
                     'cluster.properties
                     ')