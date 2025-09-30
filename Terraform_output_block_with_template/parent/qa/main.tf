module "resource_group" {
  source = "../../module/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
}


module "storage_account" {
  depends_on = [ module.resource_group ]
  source = "../../module/storage_account"

  storage_account_name = var.storage_account_name
  resource_group_name = var.resource_group_name
  location            = var.location
  
}


module "container" {
  source = "../../module/container"

  container_name       = var.container_name
  # storage_account_name = module.storage_account.storage_account_name
  storage_account_id   = module.storage_account.storage_account_id
  
}