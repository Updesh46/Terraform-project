module "rgs" {
  source   = "../../Modules/azurerm_resource_group"
  resource = var.resource
}

module "vnet" {
  depends_on = [module.rgs]
  source     = "../../Modules/azurerm_networking"
  vnet       = var.vnet
}

module "pip" {
  depends_on = [module.rgs]
  source     = "../../Modules/azurerm_public_ip"
  publicip   = var.publicip
}


module "vm" {
  depends_on      = [module.rgs, module.pip, module.vnet]
  source          = "../../Modules/azurerm_compute"
  virtual_machine = var.virtual_machine
}