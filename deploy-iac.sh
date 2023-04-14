#!/bin/bash

# Terraform
cd ./terraform
terraform init
terraform fmt
terraform apply

# Configure kubectl
gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw region)