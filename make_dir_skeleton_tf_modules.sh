#!/bin/bash

echo "Create Skeleton Directory for TF Modules"

# Data-Stores
mkdir -p data-stores/{mysql,pgsql,redis}
touch data-stores/{mysql,pgsql,redis}/{main.tf,output.tf,variables.tf}
# Mgmt
mkdir -p mgmt/{vpc,jenkins}
touch mgmt/{vpc,jenkins}/{main.tf,output.tf,variables.tf}
# Security
mkdir -p security/{iam,s3,bastion-host}
touch security/{iam,s3,bastion-host}/{main.tf,output.tf,variables.tf}
# Services
mkdir -p services/{webserver-cluster,packer-node}
touch services/{webserver-cluster,packer-node}/{main.tf,output.tf,variables.tf}
