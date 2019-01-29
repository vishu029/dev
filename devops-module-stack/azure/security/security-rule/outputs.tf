output "id" {
  value = ["${azurerm_network_security_rule.rule.*.id}"]
}

output "name" {
  value = ["${azurerm_network_security_rule.rule.*.name}"]
}

output "priority" {
  value = ["${azurerm_network_security_rule.rule.*.priority}"]
}

output "direction" {
  value = ["${azurerm_network_security_rule.rule.*.direction}"]
}

output "access" {
  value = ["${azurerm_network_security_rule.rule.*.access}"]
}

output "protocol" {
  value = ["${azurerm_network_security_rule.rule.*.protocol}"]
}

output "source_port_range" {
  value = ["${azurerm_network_security_rule.rule.*.source_port_range}"]
}

output "destination_port_range" {
  value = ["${azurerm_network_security_rule.rule.*.destination_port_range}"]
}

output "source_address_prefix" {
  value = ["${azurerm_network_security_rule.rule.*.source_address_prefix}"]
}

output "destination_address_prefix" {
  value = ["${azurerm_network_security_rule.rule.*.destination_address_prefix}"]
}

output "network_security_group_name" {
  value = "${azurerm_network_security_rule.rule.network_security_group_name}"
}

