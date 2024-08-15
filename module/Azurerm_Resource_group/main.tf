resource "azurerm_resource_group" "resources" {
 for_each = var.Rgs
 name = each.key
 location = each.value
}




