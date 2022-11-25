# 1. Terraform Settings Block
terraform {
  # 1. Required Version Terraform
  required_version = ">= 1.0.11"
  # 2. Required Terraform Providers  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.33.0"
    }
  }

# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "terraformstate"
    container_name        = "tfstatefiles"
    key                   = "${var.environment}.terraform.tfstate"
  }  
}



# 2. Terraform Provider Block for AzureRM
provider "azurerm" {
  features {

  }
}

