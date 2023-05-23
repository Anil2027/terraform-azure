resource "azuread_user" "user_test" {
  user_principal_name = "anilneti_gmail.com#EXT#@anilnetigmail.onmicrosoft.com"
  display_name        = "user_test"  
  password            = "Secret@123"
}

resource "azurerm_role_assignment" "Reader_role" {
  scope                = azurerm_resource_group.appgrp.id
  role_definition_name = "Reader"
  principal_id         = azuread_user.user_test.object_id

  depends_on = [
    azurerm_resource_group.appgrp,
    azuread_user.user_test
  ]
}