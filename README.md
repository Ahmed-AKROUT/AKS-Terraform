# Provision Azure AKS Cluster using Terraform 

## Requirments 

 - Install Terraform 
 - Install Azure CLI
 - Install HashiCorp Terraform plugin for VS Code
 - Azure account and subscrption


## Steps 
1- Create Azure Storage Account with those labels :

 - Create New Resource Group: terraform-storage-rg
 - Create Storage Account: terraformstate (Note: Name should be unique across Azure)
 - Create Container Name: tfstatefiles

2- Terraform Command

```
# Initialize Terraform
terraform init

# Validate terraform templates
terraform validate

# Dry run to see what resources gets created
terraform plan

# Create Resources in Azure
terraform apply
```
- Verify if resources created in Azure using Management Console
- Verify the outputs in your console 
