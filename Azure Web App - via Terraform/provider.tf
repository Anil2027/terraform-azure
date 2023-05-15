terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.55.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "04d2acb9-6f92-4429-b7b8-6234f910dfc2"
  client_id = "31c3faf9-8de5-4912-8811-1bb8da7f9d94"
  tenant_id = "110f7633-77ce-4dcc-91b0-8aa51dd2741b"
  client_secret = "~M-8Q~MmATZsNjAvBkZaSz1FZnWIDMknC9Pt1bRe"
  features {}
}