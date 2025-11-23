data "azurerm_mssql_server" "sql_server" {
  for_each            = var.sql_server
  name                = each.value.sql_server_name
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_mssql_database" "mssql_database" {
  for_each = var.databases

  name      = each.value.sql_data_base_name
  server_id = data.azurerm_mssql_server.sql_server[each.value.server_key].id

  sku_name       = each.value.requested_service_objective_name
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb    = 10
  zone_redundant = false
}
