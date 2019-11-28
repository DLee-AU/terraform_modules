#!/bin/bash

echo "Create Skeleton Directory for TF Infra"
mkdir -p {dev,integration,qa,staging,prod}/{vpc,services,data-storage}
mkdir {dev,integration,qa,staging,prod}/services/{frontend-app,backend-app}/
touch {dev,integration,qa,staging,prod}/services/{frontend-app,backend-app}/{main.tf,output.tf,variables.tf}

mkdir {dev,integration,qa,staging,prod}/data-storage/{mysql,pgsql,redis}/
touch {dev,integration,qa,staging,prod}/data-storage/{mysql,pgsql,redis}/{main.tf,output.tf,variables.tf}

mkdir -p mgmt/{vpc,services}
touch mgmt/vpc/{main.tf,output.tf,variables.tf}
mkdir mgmt/services/{bastion-host,jenkins}
touch mgmt/services/{bastion-host,jenkins}/{main.tf,output.tf,variables.tf}

mkdir -p global/{iam,s3}
touch global/{iam,s3}/{main.tf,output.tf,variables.tf}
