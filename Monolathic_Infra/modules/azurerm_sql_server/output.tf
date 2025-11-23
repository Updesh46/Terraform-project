output "sql_server_ids" {
  description = "Map of SQL Server IDs"
  value       = { for k, s in azurerm_mssql_server.sql_server : k => s.id }
}