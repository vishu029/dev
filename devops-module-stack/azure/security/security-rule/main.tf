resource "azurerm_network_security_rule" "rule" {
  count                       = "${length(var.security_rule_name)}"

  name                        = "${var.security_rule_name[count.index]}"
  priority                    = "${var.priority[count.index]}"
  direction                   = "${var.direction[count.index]}"
  access                      = "${var.access[count.index]}"
  protocol                    = "${var.protocol[count.index]}"
  source_port_range           = "${var.source_port_range[count.index]}"
  destination_port_range      = "${var.destination_port_range[count.index]}"
  source_address_prefix       = "${var.source_address_prefix[count.index]}"
  destination_address_prefix  = "${var.destination_address_prefix[count.index]}"
  resource_group_name         = "${var.resource_group_name}"
  network_security_group_name = "${var.security_group_name}"
}
