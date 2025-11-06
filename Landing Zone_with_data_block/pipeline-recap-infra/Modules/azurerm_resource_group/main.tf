resource "azurerm_resource_group" "rgroup" {
    for_each=var.resource
    name=each.value.rg_name
    location=each.value.location
}