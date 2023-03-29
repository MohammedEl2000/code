output "sql_server_name" {
  description = "Name of the server created. Use this if more databases needs to be added to the server. "
  value = azurerm_mysql_server.mysqlserver.name
}
