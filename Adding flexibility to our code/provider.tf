terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "add your account details"
  tenant_id = "add your account details"
  client_id = "add your account details"
  client_secret = "add your account details"
  features {}  
}