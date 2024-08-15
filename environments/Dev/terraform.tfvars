Nok_team = {
  Nokrg001 = "australiacentral"
}

subcon = {
    frontend = {
  name                 = "subb02"
  resource_group_name  = "Nokrg001"
  virtual_network_name = "AKVN01"
  address_prefixes     = ["10.0.0.0/24"]
}
}

virnet = {
  VNet01 = {
    name                   = "AKVN01"
    location               = "australiacentral"
    azurerm_resource_group = "Nokrg001"
    address_space          = ["10.0.0.0/16"]
    dns_servers            = ["10.0.0.4", "10.0.0.5"]
  }
}
