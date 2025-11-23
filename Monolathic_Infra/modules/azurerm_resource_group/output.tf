output "resource_group_ids_map" {
  description = "Map of resource group IDs keyed by for_each key"
  value       = { for k, rg in azurerm_resource_group.rg : k => rg.id }
}