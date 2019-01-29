output "ids" {
  value = ["${azurerm_subnet.snet.*.id}"]
}

output "names" {
  value = ["${azurerm_subnet.snet.*.name}"]
}

output "ip_configurations" {
  value = ["${azurerm_subnet.snet.*.ip_configurations}"]
}

output "virtual_network_name" {
  value = ["${azurerm_subnet.snet.*.virtual_network_name}"]
}

output "address_prefix" {
  value = ["${azurerm_subnet.snet.*.address_prefix}"]
}

