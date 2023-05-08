resource "azurerm_storage_account" "appstore98766555" {  
  name                     = "appstore98766555"
  resource_group_name      = "app-grp"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
  depends_on = [
    azurerm_resource_group.appgrp
  ]

tags={
  for name,value in local.common_tags : name=>"${value}"
}
}

