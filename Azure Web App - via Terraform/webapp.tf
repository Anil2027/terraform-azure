/*

The following links provide the documentation for the new blocks used
in this terraform configuration file

1. azurerm_service_plan - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan

2. azurerm_windows_web_app - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app

*/


resource "azurerm_service_plan" "companyplan2345" {
  name                = "companyplan2345"
  resource_group_name = local.resource_group_name
  location            = local.location
  os_type             = "Windows"
  sku_name            = "B1"
  depends_on = [
    azurerm_resource_group.app1grp
  ]
}

resource "azurerm_windows_web_app" "companyapp2345666" {
  name                = "companyapp2345666"
  resource_group_name = local.resource_group_name
  location            = local.location
  service_plan_id     = azurerm_service_plan.companyplan2345.id

  site_config {
    application_stack {
      current_stack="dotnet"
      dotnet_version="v6.0"
    }
  }

  depends_on = [
    azurerm_service_plan.companyplan2345
  ]
}