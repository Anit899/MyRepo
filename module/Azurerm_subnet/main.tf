resource "azurerm_subnet" "subnet" {
  for_each             = var.subnetwork
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = ["10.0.0.0/24"]
 
}