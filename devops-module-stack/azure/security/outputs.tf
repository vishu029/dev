output "id" {
  value = "${azurerm_network_security_group.main.id}"
}

output "name" {
  value = "${azurerm_network_security_group.main.name}"
}

output "rule_id" {
  value = ["${module.security_rule.id}"]
}

output "rule_name" {
  value = ["${module.security_rule.name}"]
}

output "rule_priority" {
  value = ["${module.security_rule.priority}"]
}

output "rule_direction" {
  value = ["${module.security_rule.direction}"]
}

output "rule_access" {
  value = ["${module.security_rule.access}"]
}

output "rule_protocol" {
  value = ["${module.security_rule.protocol}"]
}

output "rule_source_port_range" {
  value = ["${module.security_rule.source_port_range}"]
}

output "rule_destination_port_range" {
  value = ["${module.security_rule.destination_port_range}"]
}

output "rule_source_address_prefix" {
  value = ["${module.security_rule.source_address_prefix}"]
}

output "rule_destination_address_prefix" {
  value = ["${module.security_rule.destination_address_prefix}"]
}

