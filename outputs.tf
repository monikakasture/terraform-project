output "instance_ips" {
  value = azurerm_linux_virtual_machine.example.private_ip_address
}