output "network_interface_id" {
  value = azurerm_network_interface.this.id
}
output "public_ip_address" {
  value = azurerm_public_ip.this.ip_address
}
