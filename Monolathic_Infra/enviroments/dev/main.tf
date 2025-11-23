module "resource_group" {

  source         = "../../modules/azurerm_resource_group"
  resource_group = var.resource_group
}


module "key_vault" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_key_vault"
  key_vault  = var.key_vault

}


module "virtual_network" {
  depends_on      = [module.resource_group, module.key_vault]
  source          = "../../modules/azurerm_networking"
  virtual_network = var.virtual_network
}

module "pip" {
  depends_on = [module.resource_group, module.key_vault]
  source     = "../../modules/azurerm_public_ip"
  public_ip  = var.public_ip
}

module "sql_server" {
  depends_on = [module.resource_group, module.key_vault]
  source     = "../../modules/azurerm_sql_server"
  sql_server = var.sql_server
}

module "sql_data_base" {

  depends_on = [module.resource_group, module.sql_server]
  source     = "../../modules/azurerm_sql_database"
  sql_server = var.sql_server
  databases  = var.database
}


module "compute" {
  depends_on = [module.resource_group, module.virtual_network, module.pip, module.key_vault]
  source     = "../../modules/azurerm_compute"
  vm         = var.vm
}
