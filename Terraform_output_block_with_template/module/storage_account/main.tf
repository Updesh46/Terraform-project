resource "azurerm_storage_account" "dev" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 =var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
    project     = "example_project"
  }
}


output "storage_account_name" {
  value = azurerm_storage_account.dev.name
}

output "storage_account_id" {
  value = azurerm_storage_account.dev.id
}