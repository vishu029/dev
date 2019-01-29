output "vnet_id" {
  value = "${azurerm_virtual_network.vnet.id}"
}

output "vnet_name" {
  value = "${azurerm_virtual_network.vnet.name}"
}

output "vnet_address_space" {
  value = "${azurerm_virtual_network.vnet.address_space}"
}

output "subnet_ids" {
  value = ["${module.subnet.ids}"]
}

output "subnet_names" {
  value = ["${module.subnet.names}"]
}

output "subnet_ip_configurations" {
  value = ["${module.subnet.ip_configurations}"]
}

output "subnet_virtual_network_name" {
  value = ["${module.subnet.virtual_network_name}"]
}

output "subnet_address_prefix" {
  value = ["${module.subnet.address_prefix}"]
}

