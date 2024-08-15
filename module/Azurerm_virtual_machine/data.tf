data "azurerm_subnet" "subblock" {
  name                 = "subb02"
  virtual_network_name = "AKVN01"
  resource_group_name  = "Nokrg001"
}

data "azurerm_key_vault" "keyvalts" {
  name                = "lovevalt011"
  resource_group_name = "Nokrg001"
}

data "azurerm_key_vault_secret" "kvs001" {
  name         = "useradmin"
  key_vault_id = data.azurerm_key_vault.keyvalts.id
}

data "azurerm_key_vault_secret" "kvs002" {
  name         = "userpassword"
  key_vault_id = data.azurerm_key_vault.keyvalts.id
}