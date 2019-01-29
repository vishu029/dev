resource "azurerm_network_security_group" "main" {
  name                = "${var.security_group_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
}

module "security_rule" {
  source                     = "./security-rule"

  security_rule_name         = ["${var.security_rule_name}"]
  priority                   = ["${var.priority}"]
  direction                  = ["${var.direction}"]
  access                     = ["${var.access}"]
  protocol                   = ["${var.protocol}"]
  source_port_range          = ["${var.source_port_range}"]
  destination_port_range     = ["${var.destination_port_range}"]
  source_address_prefix      = ["${var.source_address_prefix}"]
  destination_address_prefix = ["${var.destination_address_prefix}"]
  resource_group_name        = "${azurerm_network_security_group.main.resource_group_name}"
  security_group_name        = "${azurerm_network_security_group.main.name}"
}
