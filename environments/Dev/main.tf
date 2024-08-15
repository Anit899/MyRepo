module "Nok" {
  source = "../../module/azurerm_Resource_group"
  Rgs    = var.Nok_team
}

module "subnetdev" {

  source     = "../../module/Azurerm_subnet"
  subnetwork = var.subcon
  depends_on = [module.virtual_network]
}

module "virtual_network" {
  source         = "../../module/Azurerm_Virtual_Network"
  virtualnetwork = var.virnet
  depends_on     = [module.Nok]
}