resource "azurerm_virtual_network" "virtualnetworkdev" {
  for_each            = var.virtualnetwork
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.azurerm_resource_group
  address_space       = each.value.address_space
  dns_servers         = each.value.dns_servers
  
}



