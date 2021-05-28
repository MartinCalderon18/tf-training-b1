# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "18fae36b-8239-417e-be64-1b9e6525b6ba"
  client_id       = "c2897de7-0915-41fa-8bef-fb35a2d6cf02"
  client_secret   = var.client_secret
  tenant_id       = "0724e2c4-d4b6-49dd-9a1f-e0ec4f0b435c"
  features {}
}
# Create a resource group
resource "azurerm_resource_group" "yyyyyy-pei-01" {
  name     = "we-yyyyyy-pei-tf-01"
  location = "West Europe"
}